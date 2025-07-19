class FormatUtils {
  static String formatHeight(String height) => height == 'unknown' ? 'Unknown' : '$height cm';
  static String formatMass(String mass) => mass == 'unknown' ? 'Unknown' : '$mass kg';
  static String formatBirthYear(String birthYear) => birthYear == 'unknown' ? 'Unknown' : birthYear;
}
