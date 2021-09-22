// class initial name
class InitialName {
  // parse name
  // @string name
  // @int count (optional) if you want to give max letter
  static String parseName(String name, int count) {
    // split name with space
    var parts = name.split(' ');
    var initial = '';

    // check length
    if (parts.length > 1) {
      // check max letter
      if (count != null) {
        for (var i = 0; i < count; i++) {
          // join first leter
          initial += parts[i][0];
        }
      } else {
        // join first leter
        initial = parts[0][0] + parts[1][0];
      }
    } else {
      initial = parts[0][0];
    }
    return initial;
  }
}
