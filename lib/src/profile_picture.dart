part of flutter_profile_picture;

class ProfilePicture extends StatelessWidget {
  final String name;
  final String role; // optional
  final double radius;
  final double fontsize;
  final bool tooltip; // optional
  final bool random; // optional
  final int count; // optional
  final String img; // optional
  const ProfilePicture({
    Key key,
    @required this.name,
    @required this.radius,
    @required this.fontsize,
    this.role, // optional
    this.tooltip, // optional
    this.random, // optional
    this.count, // optional
    this.img, // optional
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
