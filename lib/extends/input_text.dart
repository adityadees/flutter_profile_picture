class InitialName {
  // @string name
  // @int count (optional) to limit the number of letters that appear
  static String parseName(String name, int count) {
    // separate each word
    var parts = name.split(' ');
    var initial = '';

    // check length
    if (parts.length > 1) {
      // check max limit
      if (count != null) {
        for (var i = 0; i < count; i++) {
          // combine the first letters of each word
          initial += parts[i][0];
        }
      } else {
        // this default, if word > 1
        initial = parts[0][0] + parts[1][0];
      }
    } else {
      // this default, if word <=1
      initial = parts[0][0];
    }
    return initial;
  }
}
