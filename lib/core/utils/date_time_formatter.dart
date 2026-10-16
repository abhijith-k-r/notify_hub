/// Formats ISO timestamps into user-friendly relative descriptions
/// (e.g., "57 mins ago", "2 days ago") matching Figma mockups.
class DateTimeFormatter {
  const DateTimeFormatter._();

  static String toRelativeTime(String? isoString) {
    if (isoString == null || isoString.isEmpty) return '';

    try {
      final DateTime dateTime = DateTime.parse(isoString);
      final DateTime now = DateTime.now();
      final Duration difference = now.difference(dateTime);

      if (difference.isNegative || difference.inSeconds < 60) {
        return 'Just now';
      } else if (difference.inMinutes < 60) {
        final int mins = difference.inMinutes;
        return '$mins ${mins == 1 ? 'min' : 'mins'} ago';
      } else if (difference.inHours < 24) {
        final int hours = difference.inHours;
        return '$hours ${hours == 1 ? 'hour' : 'hours'} ago';
      } else if (difference.inDays < 30) {
        final int days = difference.inDays;
        return '$days ${days == 1 ? 'day' : 'days'} ago';
      } else {
        final int months = (difference.inDays / 30).floor();
        return '$months ${months == 1 ? 'month' : 'months'} ago';
      }
    } catch (_) {
      return isoString;
    }
  }
}
