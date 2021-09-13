import 'package:flutter/material.dart';

class ReceiptContainer extends StatelessWidget {
  const ReceiptContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: const Color(0xffE57B07), width: 2.0)),
        child: Column(
          children: const [
            ReceiptItem(
              orderItem: "1 x Nasi goreng ayam",
              note: "Pedasnya sedikit",
              price: "150.000",
            ),
            ReceiptItem(
              orderItem: "2 x Nasi goreng caviar",
              price: "1.150.000",
            ),
            ReceiptBreak(),
            ReceiptTotal(
                subtotal: '1.300.000',
                tax: '130.000',
                serviceFee: '65.000',
                total: '1.495.000')
          ],
        ));
  }
}

class ReceiptItem extends StatelessWidget {
  final String orderItem;
  final String note;
  final String price;
  const ReceiptItem(
      {Key? key,
      required this.orderItem,
      this.note = 'none',
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                orderItem,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              note == 'none'
                  ? Container()
                  : Text(
                      note,
                      style: const TextStyle(fontSize: 12),
                    ),
            ],
          ),
          Text(
            "IDR " + price,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}


class MySeparator extends StatelessWidget {
  final double height;
  final Color color;

  const MySeparator({Key? key, this.height = 1, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 5.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}

class ReceiptBreak extends StatelessWidget {
  const ReceiptBreak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: MySeparator(
            color: const Color(0xff24232F),
          )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.print,
                color: const Color(0xffE57B07),
                size: 24,
              ))
        ],
      ),
    );
  }
}


class ReceiptTotal extends StatelessWidget {
  final String subtotal;
  final String tax;
  final String serviceFee;
  final String total;
  const ReceiptTotal(
      {Key? key,
      required this.subtotal,
      required this.tax,
      required this.serviceFee,
      required this.total})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReceiptItem(orderItem: "SUBTOTAL", price: subtotal),
        ReceiptItem(orderItem: "TAX", price: tax),
        ReceiptItem(orderItem: "SERVICE FEE", price: serviceFee),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: MySeparator(color: Color(0xff24232F)),
        ),
        ReceiptItem(orderItem: "TOTAL", price: total),
      ],
    );
  }
}