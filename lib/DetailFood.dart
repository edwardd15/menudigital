import 'package:flutter/material.dart';
import 'search_bar.dart';

class DetailFood extends StatelessWidget {
  // const DetailFood({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color(0xfff2f2f2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 300,
                          width:  MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/movies0.jpg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 255, 0, 0),
                          child: KontenerDetilPutih(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 21,
                    ),
                     Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Food Information",
                            style: TextStyle(
                              color: Color(0xff24232F),
                              fontSize: 15,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:10.0),
                            child: Text("Nulla egestas vitae nisl quis posuere. Aliquam congue egestas tellus, ac sodales tortor volutpat sit amet. Cras ac placerat quam, id dapibus odio. Sed lacinia commodo semper. In porttitor odio sed molestie elementum. Nulla eu condimentum sem. ",
                              style: TextStyle(
                                color: Color(0xff24232F),
                                fontSize: 12,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              )
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 26,
                    ),
                    Notes()
                  ],
                ),
              ),

              SizedBox(
                height: 110,
              ),

              SingleChildScrollView(
                child: InfoHargaButton()
              )
             
              ],
          ),
          

        ),
      )
      // child: Stack(
      //   children: [
      //     Container(
      //       height: 300,
      //       width:40,
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage('assets/movies0.jpg'),
      //           fit: BoxFit.fill,
      //         ),
      //         borderRadius: BorderRadius.circular(15)
      //       ),
      //     ),

      //     Padding(
      //       padding: const EdgeInsets.only(top: 100),
      //       child: KontenerDetilPutih(),
      //     )

      //   ],
      // ),
    );
  }
}