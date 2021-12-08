import 'package:flutter/material.dart';
import 'package:menudigital/components/button_component.dart';

class Component extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Icon(Icons.search, size: 24, color: Color(0xff24232F)),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  hintText: 'Search your fav food',
                  hintStyle: TextStyle(
                      color: Color(0xff7D7D7D),
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: IconButton(
                padding: EdgeInsets.zero,
                iconSize: 24,
                icon: Icon(Icons.filter_alt_outlined),
                color: Color(0xff24232F),
                onPressed: () {}),
          )
        ],
      ),
    );
  }
}

// class PlusMinus extends StatelessWidget {
//     int qty;
//     PlusMinus({ key, this.qty = 0}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {

//     return Container(
//       height: 14,
//       child: Row(
//         children: [
//           IconButton(
//               padding: EdgeInsets.zero,
//               iconSize: 14,
//               icon: Icon(Icons.remove_circle_rounded),
//               color: Color(0xffAFAFAF),
//               onPressed: () {
//                 qty = qty-1;
//               }),
//           Text(qty.toString(),
//             style: TextStyle(
//               color: Color(0xff24232F),
//               fontSize: 12,
//               fontFamily: "Poppins",
//               fontWeight: FontWeight.w500
//             )
//           ),
//           IconButton(
//             padding: EdgeInsets.zero,
//             iconSize: 14,
//             icon: Icon(Icons.add_circle_rounded),
//             color: Color(0xffFFC533),
//             onPressed: () {}),
//         ],
//       ),
//     );
//   }
// }

class CardBestSeller extends StatelessWidget {
  final String name;
  final double price;
  const CardBestSeller({key, this.name = "", this.price = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 125,
          width: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/food.jpg'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(15)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
            height: 65,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xffFFB636), width: 2)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 13, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: TextStyle(
                          color: Color(0xff24232F),
                          fontSize: 12,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600)),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Text("IDR",
                                    style: TextStyle(
                                        color: Color(0xff24232F),
                                        fontSize: 7,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w400)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: Text(price.toString(),
                                      style: TextStyle(
                                          color: Color(0xff24232F),
                                          fontSize: 12,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400)),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                  height: 15,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      color: Color(0xffDBDBDB),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.icecream_sharp,
                                          size: 9, color: Color(0xff3F3F49)),
                                      Text("Dessert",
                                          style: TextStyle(
                                              color: Color(0xff3F3F49),
                                              fontSize: 6,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                        PlusMinus(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PlusMinus extends StatefulWidget {
  @override
  _PlusMinusState createState() => _PlusMinusState();
}

class _PlusMinusState extends State<PlusMinus> {
  int qty;
  _PlusMinusState({this.qty = 0});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14,
      child: Row(
        children: [
          IconButton(
              padding: EdgeInsets.zero,
              iconSize: 14,
              icon: Icon(Icons.remove_circle_rounded),
              color: Color(0xffAFAFAF),
              onPressed: () {}),
          Text(qty.toString(),
              style: TextStyle(
                  color: Color(0xff24232F),
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500)),
          IconButton(
              padding: EdgeInsets.zero,
              iconSize: 14,
              icon: Icon(Icons.add_circle_rounded),
              color: Color(0xffFFC533),
              onPressed: () {}),
        ],
      ),
    );
  }
}

class PlusMinusWithBorder extends StatefulWidget {
  @override
  _PlusMinusWithBorderState createState() => _PlusMinusWithBorderState();
}

class _PlusMinusWithBorderState extends State<PlusMinusWithBorder> {
  int qty;
  _PlusMinusWithBorderState({this.qty = 0});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 56.83,
        decoration: BoxDecoration(
            color: Color(0xff24232F).withOpacity(0.7),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  iconSize: 16.53,
                  icon: Icon(Icons.remove_circle_rounded),
                  color: Color(0xffAFAFAF),
                  onPressed: () {}),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.3, 0, 8.3, 0),
                child: Text(qty.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500)),
              ),
              IconButton(
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  iconSize: 16.53,
                  icon: Icon(Icons.add_circle_rounded),
                  color: Color(0xffFFC533),
                  onPressed: () {}),
            ],
          ),
        ));
  }
}

class BigPlusMinusWithBorder extends StatefulWidget {
  @override
  _BigPlusMinusWithBorderState createState() => _BigPlusMinusWithBorderState();
}

class _BigPlusMinusWithBorderState extends State<BigPlusMinusWithBorder> {
  int qty;
  _BigPlusMinusWithBorderState({this.qty = 0});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color(0xff24232F).withOpacity(0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              iconSize: 23.73,
              icon: Icon(Icons.remove_circle_rounded),
              color: Color(0xffAFAFAF),
              onPressed: () {}),
          Container(
            width: 28,
            alignment: Alignment.center,
            child: Text(qty.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500)),
          ),
          IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              iconSize: 23.73,
              icon: Icon(Icons.add_circle_rounded),
              color: Color(0xffFFC533),
              onPressed: () {}),
        ],
      ),
    );
  }
}

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.sticky_note_2_outlined,
                      size: 24, color: Color(0xff3F3F49)),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text("Notes",
                        style: TextStyle(
                          color: Color(0xff3F3F49),
                          fontSize: 12,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ],
              ),
              Divider(color: Color(0xff3F3F49)),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Write your notes here...',
                    hintStyle: TextStyle(
                        color: Color(0xff7D7D7D),
                        fontSize: 10,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class InfoHargaButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xffFFC533),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Price",
                    style: TextStyle(
                      color: Color(0xff24232F),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    )),
                Row(
                  children: [
                    Text("IDR",
                        style: TextStyle(
                          color: Color(0xff24232F),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("80.000",
                          style: TextStyle(
                            color: Color(0xff24232F),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ],
                ),
              ],
            ),
            // Button putih
            Container(
              width: 194,
              height: 41,
              child: Expanded(
                child: AccentButton(
                  onTap: (){},
                  text: "Order Now",
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KontenerDetilPutih extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Tuna Steak",
                style: TextStyle(
                  color: Color(0xff24232F),
                  fontSize: 15,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 112,
                    height: 23,
                    decoration: BoxDecoration(
                        color: Color(0xffDBDBDB),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.fastfood,
                            size: 17, color: Color(0xff3F3F49)),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Main Course",
                              style: TextStyle(
                                color: Color(0xff3F3F49),
                                fontSize: 10,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ],
                    ),
                  ),
                  BigPlusMinusWithBorder()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardKeranjang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xffF2F2F2), borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            height: 83,
            width: 90,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/food.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Luxurious Oat",
                        style: TextStyle(
                          color: Color(0xff24232F),
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete,
                            size: 17, color: Color(0xff3F3F49))),
                  ],
                ),

                Text("Main Course",
                    style: TextStyle(
                      color: Color(0xff6F6D6D),
                      fontSize: 11,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w300,
                    )),

                //Harga
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Row(
                    children: [
                      Text("IDR",
                          style: TextStyle(
                              color: Color(0xff24232F),
                              fontSize: 10,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600)),
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Text("30.000",
                            style: TextStyle(
                                color: Color(0xff24232F),
                                fontSize: 18,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 1.0),
                      child: Text("Tidak pakai bawang",
                          style: TextStyle(
                              color: Color(0xff24232F),
                              fontSize: 9,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500)),
                    ),
                    BigPlusMinusWithBorder(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
