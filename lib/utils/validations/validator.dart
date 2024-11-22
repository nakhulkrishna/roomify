class NValidator {
  static String? ValidatEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required.";
    }
    final emailRegExp = RegExp(r'^[w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return "Invalid email address";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    if (value.length < 6) {
      return 'password must be at least 6 characters long';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'passwrod must contain at least ome upprcase letter.';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'passwrod must contain at least one  number.';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'phone number is required.';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'invalid phone number format (10 digits required).';
    }

    return null;
  }
}
