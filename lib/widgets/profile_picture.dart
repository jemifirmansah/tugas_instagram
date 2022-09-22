import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
      Container(
    width: 120,
    height: 120,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.red,
          Colors.amber,
        ],
      ),
      color: Colors.amber,
      borderRadius: BorderRadius.circular(60),
    ),
          ),
          Container(
    width: 110,
    height: 110,
    decoration: BoxDecoration(
      color: Colors.grey,
      image: DecorationImage(
        image: NetworkImage("https://img.modradar.net/source/icons/com.ea.game.pvzfree_row.jpg"),
        fit: BoxFit.cover,
      ),
      border: Border.all(
        color: Colors.white,
        width: 3,
      ),
      borderRadius: BorderRadius.circular(55),
    ),
          ),
      ],
    );
  }
}
