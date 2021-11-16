import 'package:flutter/material.dart';
import 'components/card_component.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF2F2F2),
      child: ListView(
        children: [SummaryPageHeader(), SummaryOrder()],
      ),
    );
  }
}

class SummaryOrder extends StatelessWidget {
  const SummaryOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SummaryHeaderItem(),
      SummaryItem(name: "Pork Babi Karo", qty: "1", price: "IDR 120.000,00"),
      SummaryItem(
          name: "Pork Babi Karo000000", qty: "1", price: "IDR 20.000,00"),
    ]);
  }
}

class SummaryHeaderItem extends StatelessWidget {
  const SummaryHeaderItem({Key? key}) : super(key: key);

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
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: paddingWidth),
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

class SummaryItem extends StatelessWidget {
  final String name;
  final String qty;
  final String price;
  const SummaryItem(
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
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: paddingWidth),
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

class SummaryPageHeader extends StatelessWidget {
  const SummaryPageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double NameWidthColumn = MediaQuery.of(context).size.width - 300;
    return Padding(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
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
                      padding: EdgeInsets.fromLTRB(20, 8, 40, 8),
                      decoration: BoxDecoration(
                          color: const Color(0xffE8E8E8),
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10))),
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
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                'Starbucks Coffee - Cabang Surya Sumantri',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ));
  }
}

// class SummaryOrder extends StatelessWidget {
//   const SummaryOrder({Key? key}) : super(key: key);
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

// class SummaryOrder extends StatelessWidget {
//   const SummaryOrder({Key? key}) : super(key: key);
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

class SummaryTotal extends StatelessWidget {
  const SummaryTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


// class SummaryOrder extends StatelessWidget {
//   const SummaryOrder({Key? key}) : super(key: key);

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
