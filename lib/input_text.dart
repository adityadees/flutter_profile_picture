class InitialName {
  static String parseName(String name, int count) {
    var parts = name.split(' ');
    var initial = '';

    if (parts.length > 1) {
      if (count != null) {
        for (var i = 0; i < count; i++) {
          initial += parts[i][0];
        }
      } else {
        initial = parts[0][0] + parts[1][0];
      }
    } else {
      initial = parts[0][0];
    }
    return initial;
  }
}
