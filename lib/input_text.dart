class GetInitialName {
  static String parseName(String name) {
    var parts = name.split(' ');

    var initial = '';
    if (parts.length > 1) {
      initial = parts[0][0] + parts[1][0];
    } else {
      initial = parts[0][0];
    }
    return initial;
  }
}
