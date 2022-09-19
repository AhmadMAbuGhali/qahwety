import 'package:flutter/material.dart';
import 'package:qahwety/resources/color_manager.dart';
import 'package:qahwety/ui/cart_screens/calendar_screen.dart';
import 'package:qahwety/ui/cart_screens/utils.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

import 'add_schedule_order.dart';

class ScheduleOrder extends StatefulWidget {
  const ScheduleOrder({Key? key}) : super(key: key);

  @override
  State<ScheduleOrder> createState() => _ScheduleOrderState();

}

class _ScheduleOrderState extends State<ScheduleOrder> {


  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _chosenDate = DateTime.now();

  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? addedDay ;
  final dateFormat = DateFormat('EEEE yyyy-MMMM-dd');

  static List<AddScheduleOrder> addScheduleOrder = [];

  static List<String> dayName = [];

  static List<String> date = [];
  static List<String> time = [];

  addDynamic() {
    if (dayName.length != 0) {
      List<AddScheduleOrder> addScheduleOrder = [];

      List<String> dayName = [];

      List<String> date = [];
      List<String> time = [];
    }
    setState(() {});
    if (addScheduleOrder.length >= 10) {
      return;
    }
    addScheduleOrder.add(new AddScheduleOrder(
        dayName: DateFormat('EEEE').format(_selectedDay!),
        date: DateFormat(' d MMM, yyyy').format(_selectedDay!),
        time: DateFormat('h:mm a').format(_selectedDay!)));
  }
  Widget dynamicTextField = new Flexible(
    flex: 2,
    child: new ListView.builder(
      itemCount: addScheduleOrder.length,
      itemBuilder: (_, index) => addScheduleOrder[index],
    ),
  );
  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
      _selectedDay = addedDay;

  }

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Schedule Order'),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.check))],
        ),
        body: Container(
          child: Column(
            children: [
              TableCalendar(
                calendarStyle: CalendarStyle(
         
                    rangeHighlightColor: Theme.of(context).primaryColor,
                    todayTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white)),
                firstDay: kFirstDay,
                lastDay: kLastDay,
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,

                selectedDayPredicate: (day) {
                  // Use `selectedDayPredicate` to determine which day is currently selected.
                  // If this returns true, then `day` will be marked as selected.

                  // Using `isSameDay` is recommended to disregard
                  // the time-part of compared DateTime objects.
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    // Call `setState()` when updating the selected day
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  }
                },
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    // Call `setState()` when updating calendar format
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                },
                onPageChanged: (focusedDay) {
                  // No need to call `setState()` here
                  _focusedDay = focusedDay;
                },
              ),
              addScheduleOrder.length == 0
                  ? Text('Add order')
                  : Expanded(
                    child: ListView.builder(
                        itemCount: addScheduleOrder.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {

                          return AddScheduleOrder(
                              dayName: DateFormat('EEEE').format(_selectedDay!),
                              date: DateFormat(' d MMM, yyyy')
                                  .format(_selectedDay!),
                              time: DateFormat('h:mm a').format(_selectedDay!));
                        }),
                  ),

              // CalendarScreen(),
            ],
          ),
        ),
        bottomSheet: BottomSheet(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: ColorManager.primary,
                    child: IconButton(
                      onPressed: () {
                        addDynamic();

                        print(_selectedDay
                            .toString()); // prints something like 2019-12-10 10:02:22.287949
                        print(DateFormat('EEEE')
                            .format(_selectedDay!)); // prints Tuesday
                        print(DateFormat(' d MMM, yyyy').format(
                            _selectedDay!)); // prints Tuesday, 10 Dec, 2019
                        print(DateFormat('h:mm a').format(
                            _selectedDay!)); // prints 10:02 AM                    },
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
          onClosing: () {},
        ),
      ),
    );
  }
}
