import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class ControllerCalendar extends GetxController {
  final calendarFormat = CalendarFormat.month.obs;
  final focusedDay = DateTime.now().obs;
  final selectedDay = DateTime.now().obs;
}
