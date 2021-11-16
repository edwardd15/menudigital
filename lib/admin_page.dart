import 'package:flutter/material.dart';
import 'components//other_component.dart';
import 'components/receipt_component.dart';

import 'components/button_component.dart';
import 'components/input_component.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double rightPageWidth = 520;
    final double leftPageWidth =
        MediaQuery.of(context).size.width - rightPageWidth;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xffFFC533),
          image: DecorationImage(
              image: AssetImage('images/patternfood.png'),
              repeat: ImageRepeat.repeat)),
      child: Row(
        children: [
          // LEFT PAGE
          Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              width: leftPageWidth,
              decoration: BoxDecoration(
                  color: Colors.amber[300],
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(60)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.25),
                        offset: const Offset(2, -2),
                        blurRadius: 2)
                  ],
                  image: const DecorationImage(
                      image: AssetImage('images/patternfood_light.png'),
                      repeat: ImageRepeat.repeat)),
              child: IntrinsicWidth(
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: ClipOval(
                            child: Image.network(
                              'https://pbs.twimg.com/profile_images/749805306742353920/l0ygocj4_400x400.jpg',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Solaria - Festival City Link',
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: AdminMenuContainer(
                            title: 'Create',
                            image:
                                Image(image: AssetImage('images/create.png')),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TableInput(hintText: "Table number"),
                                AccentButton(
                                  onTap: () {},
                                  text: 'Confirm',
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff24232F)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: AdminMenuContainer(
                          title: 'Printer',
                          image: Image(image: AssetImage('images/printer.png')),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomOutlinedButton(text: 'Test Print'),
                              SwitchAutoButton(
                                value: true,
                              )
                            ],
                          ),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Expanded(
                          child: AdminMenuContainer(
                            title: 'Transactions',
                            image: Image(
                                image: AssetImage('images/transaction.png')),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: AdminMenuContainer(
                          title: 'History',
                          image: Image(image: AssetImage('images/history.png')),
                          child: Expanded(child: HistoryListContainer()),
                        )),
                      ],
                    ))
                  ],
                ),
              )),
          // RIGHT PAGE
          Container(
              width: rightPageWidth,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                children: [
                  ReceiptHeader(
                    tableNumber: "13",
                    transactionId: "18793782",
                    time: "13:22",
                  ),
                  Expanded(
                    child: ReceiptContainer(),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CustomOutlinedButton(
                        text: 'Close Transaction',
                        textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff24232F)),
                        verticalPadding: 14,
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: AccentButton(
                        onTap: () {},
                        text: 'Print Receipt',
                        verticalPadding: 14,
                        backgroundColor: Color(0xff24232F),
                        textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ))
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class ReceiptHeader extends StatelessWidget {
  final String tableNumber;
  final String transactionId;
  final String time;
  const ReceiptHeader(
      {Key? key,
      required this.tableNumber,
      required this.transactionId,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Table #",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff24232F)),
            ),
            Text(
              tableNumber,
              style: const TextStyle(
                  fontSize: 30,
                  height: 1.2,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff24232F)),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                const Text(
                  "Transaction ID: ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff24232F)),
                ),
                Text(
                  transactionId,
                  style:
                      const TextStyle(fontSize: 14, color: Color(0xff24232F)),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  "Time: ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff24232F)),
                ),
                Text(
                  time,
                  style:
                      const TextStyle(fontSize: 14, color: Color(0xff24232F)),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

class HistoryListContainer extends StatelessWidget {
  const HistoryListContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: const Color(0xffC4C4C4), width: 1.5)),
      child: ListView(
        children: [
          HistoryItem(
            tableNumber: 9,
            idNumber: "1231412",
            time: "11:12",
          ),
          HistoryItem(
            tableNumber: 14,
            idNumber: "1231454",
            time: "14:12",
          ),
          HistoryItem(
            tableNumber: 79,
            idNumber: "1200812",
            time: "16:54",
          ),
        ],
      ),
    );
  }
}

class HistoryItem extends StatelessWidget {
  final int tableNumber;
  final String idNumber;
  final String time;
  const HistoryItem(
      {Key? key,
      required this.tableNumber,
      required this.idNumber,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 42,
                      child: Text(
                        tableNumber.toString(),
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ID " + idNumber,
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          time,
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    )
                  ],
                ),
                CustomOutlinedButton(
                  text: "Unclose",
                  textStyle: TextStyle(fontSize: 11),
                )
              ],
            ),
            Divider(
              height: 0,
              color: const Color(0xffC4C4C4),
            )
          ],
        ));
  }
}
