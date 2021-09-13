import 'package:flutter/material.dart';

class RestaurantImage extends StatelessWidget {
  final double radius;
  final String imageUrl;
  final String restaurantName;
  const RestaurantImage(
      {Key? key,
      this.radius = 100,
      required this.imageUrl,
      required this.restaurantName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final outerRadius = radius + 6;
    return Column(
      children: [
        Stack(alignment: Alignment.center, children: [
          Container(
            width: outerRadius,
            height: outerRadius,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(outerRadius / 2)),
                color: Colors.white),
          ),
          Container(
            width: radius,
            height: radius,
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffFFC533), width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(radius / 2)),
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageUrl))),
          )
        ]),
        SizedBox(height: 10,),
        Text(
          restaurantName,
          style: const TextStyle(
              fontFamily: 'Lato',
              fontSize: 24,
              color: Color(0xff24232F),
              fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}

class AdminMenuContainer extends StatelessWidget {
  final String title;
  final Widget child;
  final Image image;

  const AdminMenuContainer(
      {Key? key, required this.title, this.child = const Text("Empty"), required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: image,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            // width: double.infinity,
            // height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 8,
                ),
                child
              ],
            ),
          )
        ],
      ),
    );
  }
}
