import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui1/hero.dart';

Card carditem(List data, int _index, BuildContext context) {
  return Card(
    color: Colors.transparent,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    elevation: 6,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: InkWell(
      onTap: () {
        //         Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Hero1()),
        // );
        Get.to(Hero1(),
            transition: Transition.zoom,
            duration: Duration(milliseconds: 500));
      },
      child: Stack(
        children: [
          Container(
            width: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'NIKE AIR',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: false,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'AIR JORDAIN 1 MID SE GC',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: false,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '800$_index\$',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: false,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.bottomRight,
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomRight: Radius.circular(30),
                            ),
                            color: Colors.amber),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  child: Image(image: AssetImage(data[_index])),
                  decoration: BoxDecoration(
                  // color: Colors.blue,
              
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
