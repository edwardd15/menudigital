import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;

  const CustomButton(
      {Key? key,
      required this.text,
      this.buttonColor = const Color(0xff2F293E),
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(text),
      style: TextButton.styleFrom(
        fixedSize: Size(200, 40),
        backgroundColor: buttonColor,
        primary: textColor,
        textStyle: const TextStyle(fontSize: 14, fontFamily: 'Lato'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}

class TableButton extends StatefulWidget {
  final String number;
  final bool isClicked;
  const TableButton({Key? key, required this.number, this.isClicked = false})
      : super(key: key);

  @override
  _TableButtonState createState() => _TableButtonState();
}

class _TableButtonState extends State<TableButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(widget.number),
      style: TextButton.styleFrom(
        fixedSize: const Size(50, 30),
        backgroundColor:
            widget.isClicked ? Colors.amber[400] : Colors.transparent,
        primary: Colors.black87,
        textStyle: const TextStyle(fontSize: 14),
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xff24232F), width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}

class ButtonOutline extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final double borderWidth;
  final double verticalPadding;
  const ButtonOutline(
      {Key? key,
      required this.text,
      this.borderWidth = 1.5,
      this.textStyle = const TextStyle(fontSize: 14),
      this.verticalPadding = 5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(text, style: textStyle,),
      style: TextButton.styleFrom(
        padding:
            EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 16),
        backgroundColor: Colors.white,
        primary: const Color(0xff24232F),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xff24232F), width: borderWidth),
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}

class FoodTypeButton extends StatefulWidget {
  final String text;
  final bool isClicked;
  const FoodTypeButton({Key? key, required this.text, this.isClicked = false})
      : super(key: key);

  @override
  _FoodTypeButtonState createState() => _FoodTypeButtonState();
}

class _FoodTypeButtonState extends State<FoodTypeButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Row(
          children: [
            const Icon(
              Icons.fastfood,
              size: 20,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              widget.text,
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
      style: TextButton.styleFrom(
        fixedSize: const Size.fromHeight(30),
        backgroundColor:
            widget.isClicked ? const Color(0xffFFC533) : Colors.white,
        primary: widget.isClicked
            ? const Color(0xff24232F)
            : const Color(0xff86868B),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}

class AccentButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Color backgroundColor;
  final double verticalPadding;
  const AccentButton(
      {Key? key,
      required this.text,
      this.textStyle = const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xff24232F)),
      this.backgroundColor = const Color(0xffFFC533),
      this.verticalPadding = 5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(text, style: textStyle),
      style: TextButton.styleFrom(
        padding:
            EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 16),
        backgroundColor: backgroundColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))),
      ),
    );
  }
}

class SwitchAutoButton extends StatefulWidget {
  final bool value;
  const SwitchAutoButton({Key? key, required this.value}) : super(key: key);

  @override
  _SwitchAutoButtonState createState() => _SwitchAutoButtonState();
}

class _SwitchAutoButtonState extends State<SwitchAutoButton> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = widget.value;
    return Row(children: [
      Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = !isSwitched;
            print(isSwitched);
          });
        },
        activeTrackColor: const Color(0xff24232F),
        activeColor: const Color(0xffFFC533),
        inactiveThumbColor: Colors.white,
      ),
      Text(
        isSwitched ? "Auto ON" : "Auto OFF",
        style: TextStyle(
            color: const Color(0xff24232F), fontWeight: FontWeight.w600),
      )
    ]);
  }
}
