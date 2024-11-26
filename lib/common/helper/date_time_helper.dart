import 'package:intl/intl.dart';

DateTime parseIndonesianDate(String dateString) {
  // Define Indonesian month names
  List<String> monthNames = [
    "Januari",
    "Februari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  // Split the date string into day, month, and year
  List<String> parts = dateString.split(" ");
  int day = int.parse(parts[0]);
  int monthIndex = monthNames.indexOf(parts[1]) +
      1; // Add 1 because month index starts from 1
  int year = int.parse(parts[2]);

  // Create DateTime object
  return DateTime(year, monthIndex, day);
}

int calculateDifferenceInYears(DateTime startDate, DateTime endDate) {
  int years = endDate.year - startDate.year;
  if (endDate.month < startDate.month ||
      (endDate.month == startDate.month && endDate.day < startDate.day)) {
    years--;
  }
  return years;
}

bool isYesterday(DateTime date) {
  // Get today's date at midnight
  DateTime now = DateTime.now();
  DateTime today = DateTime(now.year, now.month, now.day);

  // Get yesterday's date at midnight
  DateTime yesterday = today.subtract(const Duration(days: 1));

  // Compare date with yesterday
  return date.year == yesterday.year &&
      date.month == yesterday.month &&
      date.day == yesterday.day;
}

String formatTime(DateTime dateTime) {
  // Check if the date is today
  DateTime now = DateTime.now();
  DateTime today = DateTime(now.year, now.month, now.day);

  if (dateTime.year == today.year &&
      dateTime.month == today.month &&
      dateTime.day == today.day) {
    // Return only HH:mm format if it's today
    return DateFormat('HH:mm').format(dateTime);
  } else {
    // Return full formatted date if it's not today
    return DateFormat('yyyy/MM/dd').format(dateTime);
  }
}

String formatted24Hour(DateTime dateTime) {
  DateTime now = DateTime.now();
  DateTime today = DateTime(now.year, now.month, now.day);

  if (dateTime.year == today.year &&
      dateTime.month == today.month &&
      dateTime.day == today.day) {
    // Return only HH:mm format if it's today
    return "Hari ini";
  } else {
    // Return full formatted date if it's not today
    return DateFormat('yyyy/MM/dd').format(dateTime);
  }
}
