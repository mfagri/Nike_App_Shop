import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Hero1 extends StatefulWidget {
  const Hero1({super.key});

  @override
  State<Hero1> createState() => _Hero1State();
}

class _Hero1State extends State<Hero1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 29, 31, 33),
        child: ListView(children: [
          Container(
            height: MediaQuery.of(context).size.height * .5,
            color: Colors.amber,
            child: Stack(children: [
              Container(
                //decorstio
                color: const Color.fromARGB(255, 29, 31, 33),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * .4,
                            width: 245,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  topLeft: Radius.circular(200),
                                  bottomLeft: Radius.circular(240),
                                  // bottomRight: Radius.circular(10),
                                ),
                                color: Colors.amber),
                          )
                        ],
                      ),
                    ]),
              ),
              Container(
                  child: Center(
                      child: Text(
                'NIKE AIR',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ))),
              Container(
                //image
                child: Center(
                    child: Image(
                        image:
                            AssetImage('lib/images/3-removebg-preview.png'))),
              ),
              Container(
                height: 80,
                // color: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: Icon(Icons.arrow_back_ios_new),
                        ),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 7,
                    // color: Colors.amber,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 5,
                              width: 15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white),
                            ),
                          ),
                        ]),
                  )
                ],
              )
            ]),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              ///part 2
              height: MediaQuery.of(context).size.height * .4,
              color: const Color.fromARGB(255, 29, 31, 33),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'NIKE AIR',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'AIR JORDAIN 1 MID SE GC',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 23),
                    ),
                    Text(
                      '800\$',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 23),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        // color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 10,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 10,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 10,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 10,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'SIZE',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.amber),
                              child: Center(
                                child: Text(
                                  '7',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Center(
                                child: Text(
                                  '7.5',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ),
                            )
                            ,Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Center(
                                child: Text(
                                  '8',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Center(
                                child: Text(
                                  '9',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30,right: 10),
                  child: Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0, top: 0),
                          child: Container(
                            height: 80,
                            width: 100,
                            // color: Colors.teal,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 1,bottom: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    
                                    children: [
                              
                                      Text(
                                        'COLOR',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                            
                                      Container(
                                        width: 80,
                                        // color: Colors.blue,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          
                                          children: [
                                            Container(
                                              height: 15,
                                              width: 15,
                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                              color: Colors.amberAccent),
                                            ),
                                            Container(
                                              height: 15,
                                              width: 15,
                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                              color: Colors.white),
                                            ),
                                            Container(
                                              height: 15,
                                              width: 15,
                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                              color: Colors.green[800]),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                                      
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                          color: Colors.amber,
                          
                          ),
                          child: Center(
                            child: Text(
                              
                              'BUY',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
