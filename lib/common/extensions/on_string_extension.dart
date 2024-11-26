import 'package:template_mobile_apps/common/helper/regex_helper.dart';

extension StringExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');

  bool get isEmail {
    return RegexHelper.emailRegex.hasMatch(this);
  }

  bool get isIdCard {
    return RegexHelper.idCardRegex.hasMatch(this);
  }

  bool get containsOnlyAlphabet {
    return RegexHelper.textOnlyRegex.hasMatch(this);
  }

  bool get isPhoneNumber {
    return RegexHelper.phoneRegex.hasMatch(this);
  }
}

extension NullableStringExtension on String? {
  bool get isNotEmptyOrNull {
    return this != null && this!.isNotEmpty;
  }
}
