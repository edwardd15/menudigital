import 'package:flutter/material.dart';
import 'components/card_component.dart';

class BillPage extends StatelessWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF2F2F2),
      child: Stack(
        children: [
          ListView(
            children: [
              BillPageHeader(),
              SizedBox(height: 3),
              BillOrder(),
              SizedBox(height: 3),
              TwoColumnRow(name: "Subtotal", price: "IDR 150.000,00"),
              TwoColumnRow(name: "Tax", price: "IDR 150.000,00"),
              TwoColumnRow(name: "Service Tax", price: "IDR 150.000,00"),
              SizedBox(
                height: 104,
              )
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(height: 104, child: BillTotalPrice()))
        ],
      ),
    );
  }
}

class TwoColumnRow extends StatelessWidget {
  final String name;
  final String price;
  final Color color;
  final FontWeight fontWeight;
  const TwoColumnRow(
      {required this.name,
      required this.price,
      this.color = Colors.white,
      this.fontWeight = FontWeight.w400,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double paddingWidth = 16;
    TextStyle textStyle = TextStyle(fontSize: 12, fontWeight: fontWeight);
    return Container(
      color: color,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: paddingWidth),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: textStyle),
          Text(price, style: textStyle),
        ],
      ),
    );
  }
}

class BillTotalPrice extends StatelessWidget {
  const BillTotalPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 3,
            spreadRadius: 1.5,
            offset: Offset(0, -1.5),
          ),
        ],
      ),
      child: Column(
        children: [
          TwoColumnRow(
            name: "TOTAL",
            price: "IDR 150.000,00",
            color: Color(0xffFFC533),
            fontWeight: FontWeight.w600,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text(
              "Please finish your payment at the cashier\nThank you",
              style: TextStyle(color: Color(0xff7D7D7D), fontSize: 10),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

class BillOrder extends StatelessWidget {
  const BillOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      BillHeaderItem(),
      BillItem(name: "Pork Babi Karo", qty: "1", price: "IDR 120.000,00"),
      BillItem(name: "Pork Babi Karo000000", qty: "1", price: "IDR 20.000,00"),
      BillItem(
          name: "Soto Ayam Ayam Ayam Ayam Ayam Ayam Ayam",
          qty: "1",
          price: "IDR 120.000,00"),
      BillItem(name: "Tahu goreng", qty: "1", price: "IDR 20.000,00"),
      BillItem(name: "Tahu goreng", qty: "1", price: "IDR 20.000,00"),
      BillItem(name: "Tahu goreng", qty: "1", price: "IDR 20.000,00"),
      BillItem(name: "Tahu goreng", qty: "1", price: "IDR 20.000,00"),
      BillItem(name: "Tahu goreng", qty: "1", price: "IDR 20.000,00"),
      BillItem(name: "Tahu goreng", qty: "1", price: "IDR 20.000,00"),
      BillItem(name: "Tahu goreng", qty: "1", price: "IDR 20.000,00"),
      BillItem(name: "Tahu goreng", qty: "1", price: "IDR 20.000,00"),
      BillItem(name: "Tahu goreng", qty: "1", price: "IDR 20.000,00"),
      BillItem(name: "Tahu goreng", qty: "1", price: "IDR 20.000,00"),
      BillItem(name: "Tahu goreng", qty: "1", price: "IDR 20.000,00"),
    ]);
  }
}

class BillHeaderItem extends StatelessWidget {
  const BillHeaderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double paddingWidth = 16;
    final double rowWidth =
        MediaQuery.of(context).size.width - 2 * paddingWidth;
    final double firstColumnWidth = rowWidth * 0.5;
    final double secondColumnWidth = rowWidth - firstColumnWidth;
    const TextStyle textStyle =
        TextStyle(fontSize: 12, fontWeight: FontWeight.w500);
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: paddingWidth),
      child: Row(
        children: [
          Container(
              width: firstColumnWidth,
              child: const Text("Name", style: textStyle)),
          Container(
              width: secondColumnWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Qty",
                    style: textStyle,
                  ),
                  Text(
                    "Price",
                    style: textStyle,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class BillItem extends StatelessWidget {
  final String name;
  final String qty;
  final String price;
  const BillItem(
      {required this.name, required this.qty, required this.price, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double paddingWidth = 16;
    final double rowWidth =
        MediaQuery.of(context).size.width - 2 * paddingWidth;
    final double firstColumnWidth = rowWidth * 0.5;
    final double secondColumnWidth = rowWidth - firstColumnWidth;
    final TextStyle textStyle = TextStyle(fontSize: 12);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: paddingWidth),
      child: Row(
        children: [
          Container(
              width: firstColumnWidth, child: Text(name, style: textStyle)),
          Container(
              width: secondColumnWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    qty,
                    style: textStyle,
                  ),
                  Text(
                    price,
                    style: textStyle,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class BillPageHeader extends StatelessWidget {
  const BillPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double nameWidthColumn = MediaQuery.of(context).size.width - 300;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 50,
                child: ClipOval(
                  child: Image.network(
                    'https://pbs.twimg.com/profile_images/749805306742353920/l0ygocj4_400x400.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Invoice Number",
                            style: TextStyle(fontSize: 8),
                          ),
                          Text(
                            "#0412342",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Table Number",
                            style: TextStyle(fontSize: 8),
                          ),
                          Text(
                            "02",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.fromLTRB(20, 8, 40, 8),
                    decoration: BoxDecoration(
                        color: const Color(0xffE8E8E8),
                        borderRadius:
                            BorderRadius.horizontal(left: Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "TOTAL",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "IDR 1.776.500,00",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 12),
          child: Text(
            'Starbucks Coffee - Cabang Surya Sumantri',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}

// class BillOrder extends StatelessWidget {
//   const BillOrder({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//         children: [
//           // Name Column
//           Column(
//             children: [
//               Container(
//                 color: Colors.white,
//                 width: double.infinity,
//                 child: Text(
//                   "Name",
//                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
//                 ),
//               ),
//               Text(
//                 "Karo Grilled Pork",
//                 style: TextStyle(fontSize: 12),
//               )
//             ],
//           ),
//           // Qty Column
//           Column(
//             children: [
//               Container(
//                 color: Colors.white,
//                 width: double.infinity,
//                 child: Text(
//                   "Qty",
//                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
//                 ),
//               ),
//               Text(
//                 "1",
//                 style: TextStyle(fontSize: 12),
//               )
//             ],
//           ),
//           // Price Column
//           Column(
//             children: [
//               Container(
//                 color: Colors.white,
//                 width: double.infinity,
//                 child: Text(
//                   "Price",
//                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
//                 ),
//               ),
//               Text(
//                 "IDR 120.000,00",
//                 style: TextStyle(fontSize: 12),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BillOrder extends StatelessWidget {
//   const BillOrder({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           // Name Column
//           Column(
//             children: [
//               Container(
//                 color: Colors.white,
//                 width: double.infinity,
//                 child: Text(
//                   "Name",
//                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
//                 ),
//               ),
//               Text(
//                 "Karo Grilled Pork",
//                 style: TextStyle(fontSize: 12),
//               )
//             ],
//           ),
//           // Qty Column
//           Column(
//             children: [
//               Container(
//                 color: Colors.white,
//                 width: double.infinity,
//                 child: Text(
//                   "Qty",
//                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
//                 ),
//               ),
//               Text(
//                 "1",
//                 style: TextStyle(fontSize: 12),
//               )
//             ],
//           ),
//           // Price Column
//           Column(
//             children: [
//               Container(
//                 color: Colors.white,
//                 width: double.infinity,
//                 child: Text(
//                   "Price",
//                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
//                 ),
//               ),
//               Text(
//                 "IDR 120.000,00",
//                 style: TextStyle(fontSize: 12),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class BillTotal extends StatelessWidget {
  const BillTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// class BillOrder extends StatelessWidget {
//   const BillOrder({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Table(
//         children: [
//           TableRow(decoration: BoxDecoration(color: Colors.white), children: [
//             Text("Name",
//                 style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
//             Text("Qty",
//                 style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
//             Text("Price",
//                 style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
//           ]),
//           TableRow(children: [
//             Text(
//               "Karo Grilled Pork",
//               style: TextStyle(fontSize: 12),
//             ),
//             Text(
//               "1",
//               style: TextStyle(fontSize: 12),
//             ),
//             Text(
//               "IDR 120.000,00",
//               style: TextStyle(fontSize: 12),
//             ),
//           ]),
//           TableRow(children: [
//             Text(
//               "Karo Grilled Porkkkkkk",
//               style: TextStyle(fontSize: 12),
//             ),
//             Text(
//               "1",
//               style: TextStyle(fontSize: 12),
//             ),
//             Text(
//               "IDR 20.000,00",
//               style: TextStyle(fontSize: 12),
//             ),
//           ]),
//         ],
//       ),
//     );
//   }
// }
