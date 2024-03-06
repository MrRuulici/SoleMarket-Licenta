import 'package:flutter/material.dart';

class SneakerCard extends StatelessWidget {
  final String shoeName;
  final String retailPrice;
  final String description;
  final String thumbnail;
  
  const SneakerCard({
    required this.shoeName,
    required this.retailPrice,
    required this.description,
    required this.thumbnail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      height: 450,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image(image: NetworkImage(thumbnail)),),
          Text(
            shoeName,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Retail Price: " + retailPrice),

            ],
            )
          ],
        ),
    );
  }
}


// margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      // width: MediaQuery.of(context).size.width,
      // height: 180,
      // decoration: BoxDecoration(
      //   color: Colors.black,
      //   borderRadius: BorderRadius.circular(15),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.black.withOpacity(0.6),
      //       offset: const Offset(
      //         0.0,
      //         10.0,
      //       ),
      //       blurRadius: 10.0,
      //       spreadRadius: -6.0,
      //     ),
      //   ],
      //   image: DecorationImage(
      //     colorFilter: ColorFilter.mode(
      //       Colors.black.withOpacity(0.35),
      //       BlendMode.multiply,
      //     ),
      //     image: NetworkImage(thumbnail),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      // child: Stack(
      //   children: [
      //     Align(
      //       alignment: Alignment.center,
      //       child:  Padding(
      //         padding: EdgeInsets.symmetric(horizontal: 5.0),
      //         child: Text(
      //           shoeName,
      //           style: const TextStyle(
      //             fontSize: 19,
      //           ),
      //           overflow: TextOverflow.ellipsis,
      //           maxLines: 2,
      //           textAlign: TextAlign.center,
      //         ),
      //       ),
      //     ),
      //     Align(
      //       alignment: Alignment.bottomLeft,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Container(
      //             padding: EdgeInsets.all(5),
      //             margin: EdgeInsets.all(10),
      //             decoration: BoxDecoration(
      //               color: Colors.black.withOpacity(0.4),
      //               borderRadius: BorderRadius.circular(15),
      //             ),
      //             child: Row(
      //               children: [
      //                const Icon(
      //                   Icons.star,
      //                   color: Colors.yellow,
      //                   size: 18,
      //                 ),
      //                 SizedBox(width: 7),
      //                 Text(retailPrice),
      //               ],
      //             ),
      //           ),
      //           Container(
      //             padding: const EdgeInsets.all(5),
      //             margin: const EdgeInsets.all(10),
      //             decoration: BoxDecoration(
      //               color: Colors.black.withOpacity(0.4),
      //               borderRadius: BorderRadius.circular(15),
      //             ),
      //             child: Row(
      //               children: [
      //                 const Icon(
      //                   Icons.schedule,
      //                   color: Colors.yellow,
      //                   size: 18,
      //                 ),
      //                const SizedBox(width: 7),
      //                 Text(description),
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
