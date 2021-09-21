part of flutter_profile_picture;

class ProfilePicture extends StatelessWidget {
  final String name;
  final String role;
  final double radius;
  final double fontsize;
  final bool tooltip;
  final bool random;
  final int count;
  final String img;
  const ProfilePicture({
    Key key,
    @required this.name,
    @required this.radius,
    @required this.fontsize,
    this.role,
    this.tooltip,
    this.random,
    this.count,
    this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (tooltip == true) {
      return MyTooltip(
        message: role == '' ? name : name + '\n' + role,
        child: Avatar(
          radius: radius,
          name: name,
          fontsize: fontsize,
          random: random,
          count: count,
          img: img,
        ),
      );
    } else {
      return Avatar(
        radius: radius,
        name: name,
        fontsize: fontsize,
        random: random,
        count: count,
        img: img,
      );
    }
  }
}
