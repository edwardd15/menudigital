import 'package:flutter/material.dart';
import 'components/card_component.dart';

class CartsPage extends StatelessWidget {
  const CartsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color(0xfff2f2f2),
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(230),
              child: CartAppBar(
                tabBar: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                    indicatorColor: Color(0xff24232F),
                    labelColor: Color(0xff24232F),
                    tabs: [
                      Tab(
                        text: "Your Cart",
                      ),
                      Tab(
                        text: "Ordered Item",
                      )
                    ]),
              )),

          body: TabBarView(
            children: [
              YourOrderView(),
              Icon(Icons.directions_transit),
            ],
          ),
          // bottomSheet: Container(
          //   color: Colors.red,
          //   width: double.infinity,
          // ),
        ));
  }
}

class CartAppBar extends StatelessWidget {
  final Widget tabBar;
  const CartAppBar({Key? key, required this.tabBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double tableNumSpacing = MediaQuery.of(context).size.width - 300;
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      flexibleSpace: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16, 30, 0, 8),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Text(
                    'Starbucks Coffee - Cabang Surya Sumantri',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 8, tableNumSpacing, 8),
                      decoration: BoxDecoration(
                          color: const Color(0xffE8E8E8),
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10))),
                      child: Column(
                        children: [
                          Text(
                            'Table number',
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            '02',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                tabBar
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class YourOrderView extends StatelessWidget {
  const YourOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 24),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          child: ListView(
            children: [
              CardKeranjang(),
              SizedBox(height: 10),
              CardKeranjang(),
              SizedBox(height: 10),
              CardKeranjang()
            ],
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(height: 78, child: InfoHargaButton())
            // Container(width: double.infinity, height: 50, color: Colors.red,),
            )
      ],
    );
  }
}
