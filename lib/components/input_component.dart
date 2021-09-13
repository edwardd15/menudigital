import 'package:flutter/material.dart';

class TableInput extends StatelessWidget {
  final String hintText;
  const TableInput({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        child: TextField(
          decoration: InputDecoration(
              isCollapsed: true,
              hintText: hintText,
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber, width: 2)),
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8)),
        ));
  }
}

class CustomInput extends StatelessWidget {
  final String label;
  const CustomInput({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontFamily: 'Lato'),
          textAlign: TextAlign.start,
        ),
        Container(
            margin: const EdgeInsets.only(top: 8.0),
            width: 310,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.orange, width: 1.0),
              borderRadius: const BorderRadius.all(Radius.circular(50)),
            ),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  isCollapsed: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10)),
            ))
      ],
    );
  }
}

// class SearchBar extends StatelessWidget {
//   const SearchBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 38,
//       width: MediaQuery.of(context).size.width * 0.7,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(color: Colors.black)),
//       child: Row(
//         children: const [
//           Icon(Icons.search),
//           Flexible(
//             child: TextField(
//               cursorColor: Color(0xffFFB636),
//               style: TextStyle(
//                   letterSpacing: 1,
//                   color: Colors.white,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w300),
//               decoration: InputDecoration(
//                 contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
//                 hintText: 'Search your fav food',
//                 hintStyle: TextStyle(
//                     color: Color(0xff7D7D7D),
//                     fontSize: 12,
//                     fontWeight: FontWeight.w400),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
