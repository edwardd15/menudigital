import 'dart:ui';

import 'package:flutter/material.dart';
import '/components/other_component.dart';

import '/components/button_component.dart';
import '/components/input_component.dart';

class AdminLoginPage extends StatelessWidget {
  const AdminLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double topPadding = MediaQuery.of(context).size.height / 6;
    return Container(
        padding: EdgeInsets.only(top: topPadding),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xffFFC533),
            image: DecorationImage(
                image: AssetImage('images/patternfood.png'),
                repeat: ImageRepeat.repeat)),
        child: Column(
          children: [
            RestaurantImage(
              radius: 100,
              imageUrl:
                  'https://pbs.twimg.com/profile_images/749805306742353920/l0ygocj4_400x400.jpg',
              restaurantName: "Solaria Festival City Link",
            ),
            SizedBox(height: 15),
            CustomInput(
              label: "Email",
            ),
            SizedBox(height: 10),
            CustomInput(
              label: "Password",
            ),
            SizedBox(height: 40),
            CustomLongButton(text: 'Continue', onTap: (){}),
          ],
        ));
  }
}
