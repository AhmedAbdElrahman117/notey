final RegExp kEmailRegExp = RegExp(
  r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@" // local part
  r"[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?" // domain label start
  r"(?:\.[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?)*$", // optional dot-separated labels
);

final kUsernameRegex = RegExp(r'^[A-Za-z][A-Za-z0-9]*$');

// 1. At least 7 characters
final kLengthRegex = RegExp(r'^.{6,}$');

// 2. At least one uppercase letter
final kUppercaseRegex = RegExp(r'.*[A-Z].*');

// 3. At least one special character
final kSpecialCharRegex = RegExp(r'.*[!@#$%^&*(),.?":{}|<>].*');

// 4. At least two digits
final kTwoDigitsRegex = RegExp(r'(?:.*\d){2,}');
