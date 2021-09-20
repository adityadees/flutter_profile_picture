class InitialName {
  static String parseName(String name, int count) {
    var parts = name.split(' ');
    var initial = '';

    if (parts.length > 1) {
      initial = count ?? parts[0][0] + parts[1][0];
    } else {
      initial = parts[0][0];
    }
    return initial;
  }
}
