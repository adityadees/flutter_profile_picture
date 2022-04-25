part of flutter_profile_picture;

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.radius,
    required this.name,
    required this.fontsize,
    this.random = false,
    this.count,
    this.img,
  }) : super(key: key);

  final double radius;
  final String name;
  final double fontsize;
  final bool random;
  final int? count;
  final String? img;

  @override
  Widget build(BuildContext context) {
    // check image is available or not.
    return img == null
        ? NoImage(
            radius: radius,
            name: name,
            count: count,
            fontsize: fontsize,
            random: random)
        : WithImage(radius: radius, img: img!);
  }
}

// if image available
class WithImage extends StatelessWidget {
  const WithImage({
    Key? key,
    required this.radius,
    required this.img,
  }) : super(key: key);

  final double radius;
  final String img;

  @override
  Widget build(BuildContext context) {
    // thrown into the circle avatar class.
    return CircleAvatar(
      radius: radius,
      // use background image
      backgroundImage: NetworkImage(img),
      // set background color transparent
      backgroundColor: Colors.transparent,
    );
  }
}

// if no image
class NoImage extends StatelessWidget {
  const NoImage({
    Key? key,
    required this.radius,
    required this.name,
    required this.count,
    required this.fontsize,
    required this.random,
  }) : super(key: key);

  final double radius;
  final String name;
  final int? count;
  final double fontsize;
  final bool random;

  @override
  Widget build(BuildContext context) {
    // thrown into the circle avatar class.
    return CircleAvatar(
      radius: radius,
      child: Text(
        name == ''
            ? ''
            : InitialName.parseName(name, count)
                .toUpperCase(), // get initial name and set to UpperCase to all letter
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontsize,
          letterSpacing: 1.4,
        ),
      ),
      // set background color
      // default color, random, and fixed color
      // default color if name is empty
      // random color to make the background color change every time the page is refreshed
      backgroundColor: random == true
          ? randomColor()
          : name == ''
              ? ColorName.colorDefault
              : fixedColor(
                  InitialName.parseName(name, count),
                ),
      foregroundColor: Colors.white,
    );
  }
}
