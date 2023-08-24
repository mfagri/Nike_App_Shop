import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'prudacts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage());
  }
}

List data = [
  'lib/images/3-removebg-preview.png',
  'lib/images/1-removebg-preview.png',
  'lib/images/2-removebg-preview.png',
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 29, 31, 33),
        body: Container(
          color: const Color.fromARGB(255, 29, 31, 33),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            child: Image(
                                image:
                                    AssetImage('lib/images/pngwing.com.png'))),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.menu_sharp,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: const Color.fromARGB(255, 29, 31, 33),
                height: MediaQuery.of(context).size.height * .65,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: AlignmentDirectional.topStart,
           
                          width: 300,
                          child: TabBar(
                            dividerColor: const Color.fromARGB(255, 29, 31, 33),
                            indicatorColor: Colors.transparent,
                            labelColor: const Color.fromARGB(255, 241, 182, 2),
                            unselectedLabelColor:
                                Color.fromARGB(255, 154, 155, 155),
                            tabs: [
                              Expanded(
                                child: Text(
                                  'Basketball',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Runing',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Training',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .5,
                      // color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TabBarView(
                          children: [
                            nikeair(context),
                            nikeair(context),
                            nikeair(context),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.home_outlined,
                      size: 30,
                    ),
                    centerbutton(),
                    Icon(
                      Icons.person_2_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }



  Container centerbutton() {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: Colors.black),
      child: Center(
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.amber),
          child: Center(
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
              child: Center(
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.amber),
                  child: Center(
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
