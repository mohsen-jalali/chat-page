extension DateTimeExtensions on DateTime {
  String get dateFormat {
    if(isToday){
      return "Today $hour:$minute";
    }
    if(isYesterday){
      return "Yesterday $hour:$minute";
    }
    return "${_weekDays[weekday-1]}, ${_month[month - 1]} $day, $hour:$minute";
  }

  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  bool get isYesterday {
    final now = DateTime.now().subtract(const Duration(days: 1));
    return year == now.year && month == now.month && day == now.day;
  }
}

List<String> _weekDays = [
  "Mon",
  "Tue",
  "Wed",
  "Thu",
  "Fri",
  "Sat",
  "Sun",
];

List<String> _month = [
  "Jan",
  "Feb",
  "Mar",
  "Apr",
  "May",
  "Jun",
  "Jul",
  "Aug",
  "Sep",
  "Oct",
  "Nov",
  "Dec",
];
