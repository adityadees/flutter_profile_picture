part of flutter_profile_picture;

class Avatar extends StatelessWidget {
  const Avatar({
    Key key,
    @required this.radius,
    @required this.name,
    @required this.fontsize,
    this.random,
    this.count,
    this.img,
  }) : super(key: key);

  final double radius;
  final String name;
  final double fontsize;
  final bool random;
  final int count;
  final String img;

  @override
  Widget build(BuildContext context) {
    return img == null
        ? NoImage(
            radius: radius,
            name: name,
            count: count,
            fontsize: fontsize,
            random: random)
        : WithImage(radius: radius, img: img);
  }
}

class WithImage extends StatelessWidget {
  const WithImage({
    Key key,
    @required this.radius,
    @required this.img,
  }) : super(key: key);

  final double radius;
  final String img;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(img),
      backgroundColor: Colors.transparent,
    );
  }
}

class NoImage extends StatelessWidget {
  const NoImage({
    Key key,
    @required this.radius,
    @required this.name,
    @required this.count,
    @required this.fontsize,
    @required this.random,
  }) : super(key: key);

  final double radius;
  final String name;
  final int count;
  final double fontsize;
  final bool random;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      child: Text(
        name == '' ? '' : InitialName.parseName(name, count).toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontsize,
          letterSpacing: 1.4,
        ),
      ),
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
