import 'package:flutter/material.dart';
import 'package:flutter_app/screens/my_drawer.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'login.dart';

class baseScreen extends StatefulWidget {
  @override
  _baseScreenState createState() => _baseScreenState();
}

class _baseScreenState extends State<baseScreen> {

  bool checkedValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Image.asset('assets/logo.png'),
        title: Text("Demo"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Colors.black)
              ),
              color: Colors.white,
              child: Text("Enquire Now", style: TextStyle(color: Colors.black,)),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => login()));
              },
            ),
          ),
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      drawer: SafeArea(
        child: MyDrawer(),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Colors.black)
              ),
              color: Colors.lightBlue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("    View Safety Measures against Covid-WHO compliant", style: TextStyle(color: Colors.white, fontSize: 15),),
                  Icon(Icons.navigate_next)
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: Text("Heading Introducing Stralogu goes here......", textAlign: TextAlign.center ,style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text("With a view overlooking the Arabian Sea and the Bandra Worli Sea Link, and located just 656 feet from the seafront", textAlign: TextAlign.center , style: TextStyle(color: Colors.black, fontSize: 15),),
            ),
            SizedBox(height: 20,),
            CircleAvatar(
              backgroundColor: Colors.black54,
              radius: 100,
              backgroundImage: AssetImage('assets/k.jpg'),
              // child: ClipOval(
              //   child: Image.asset(
              //     'assets/k.jpg',
              //   ),
              // ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Text("Key USPs", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 170,
              child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/bed.jpg'),
                          SizedBox(height: 20,),
                          Text("Complete safety Measure",  textAlign: TextAlign.center ,),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/k.jpg'),
                          SizedBox(height: 20,),
                          Text("Complete safety Measure",  textAlign: TextAlign.center ,),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/bed.jpg'),
                          SizedBox(height: 20,),
                          Text("Complete safety Measure",  textAlign: TextAlign.center ,),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/k.jpg'),
                          SizedBox(height: 20,),
                          Text("Complete safety Measure",  textAlign: TextAlign.center ,),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/bed.jpg'),
                          SizedBox(height: 20,),
                          Text("Complete safety Measure",  textAlign: TextAlign.center ,),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Text("First of it's kind Co-Living Experience", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 310,
              child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  // Card(
                  //   child: Container(
                  //     width: 170.0,
                  //     decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //         image: AssetImage("assets/banner_600x400.jpg"),
                  //         fit: BoxFit.fitWidth,
                  //         alignment: Alignment.topCenter,
                  //       ),
                  //     ),
                  //     child: Text("Experience on overallocation of luxury & comfort like never befor in the heart of the city"),
                  //   ),
                  // ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/k.jpg'),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city"),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/bed.jpg'),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city"),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/k.jpg'),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city"),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/bed.jpg'),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city"),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/k.jpg'),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city"),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Text("View Property >", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Text("Located in the epicenter for growth", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 310,
              child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  // Card(
                  //   child: Container(
                  //     width: 170.0,
                  //     decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //         image: AssetImage("assets/banner_600x400.jpg"),
                  //         fit: BoxFit.fitWidth,
                  //         alignment: Alignment.topCenter,
                  //       ),
                  //     ),
                  //     child: Text("Experience on overallocation of luxury & comfort like never befor in the heart of the city"),
                  //   ),
                  // ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/k.jpg'),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city"),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/bed.jpg'),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city"),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/k.jpg'),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city"),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/bed.jpg'),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city"),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/k.jpg'),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city"),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Text("View Property >", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Text("40+ Amenities at your service", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Container(

                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/bed.jpg'),
                          SizedBox(height: 10,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city",  textAlign: TextAlign.center ,),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(

                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/k.jpg'),
                          SizedBox(height: 10,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city",  textAlign: TextAlign.center ,),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 340.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/k.jpg'),
                          SizedBox(height: 10,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city",  textAlign: TextAlign.center ,),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 340.0,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/bed.jpg'),
                          SizedBox(height: 10,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city",  textAlign: TextAlign.center ,),
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Text("View Property >", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
                width: 340.0,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            color: Colors.white,
                            child: Text("Experience on omalgomation of luxury & comfort like never befor in the heart of the city", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Text("Book now with just one month of Depositt of Rs. XXXXXX",  textAlign: TextAlign.center  ,style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            Table(
              border: TableBorder.all(width: 1, color: Colors.black),
                columnWidths: {
                  0: FractionColumnWidth(0.7),
                  1: FractionColumnWidth(0.3)
                },
              children: [
                TableRow(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('Room Type', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('Price', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),


                    ]
                ),
                TableRow(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('Single', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('14000', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),


                    ]
                ),
                TableRow(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('Deluxe 2-sharing', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('12000', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),


                    ]
                ),
                TableRow(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('2-sharing', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('9500', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),


                    ]
                ),
                TableRow(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('Deluxe 3-sharing', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('9000', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),


                    ]
                ),
                TableRow(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('3-sharing', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('8000', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),


                    ]
                ),
                TableRow(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('4-sharing', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('8000', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),


                    ]
                ),
                TableRow(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('6-sharing', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text('7000', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),


                    ]
                ),

              ],
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Text("Location", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 400,
              child: Card(
                child: Image.asset("assets/map.jpg", fit: BoxFit.cover,),
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Text("View Location Benefits >", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Text("The Staylogy Family", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  // Card(
                  //   child: Container(
                  //     width: 170.0,
                  //     decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //         image: AssetImage("assets/banner_600x400.jpg"),
                  //         fit: BoxFit.fitWidth,
                  //         alignment: Alignment.topCenter,
                  //       ),
                  //     ),
                  //     child: Text("Experience on overallocation of luxury & comfort like never befor in the heart of the city"),
                  //   ),
                  // ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/k.jpg', height: 100, width: 100,),
                                  SizedBox(width: 10,),
                                  Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        child: Text(
                                          "Name",
                                          textAlign: TextAlign.start, // has impact
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 200,
                                        child: Text(
                                          "Designation",
                                          textAlign: TextAlign.start, // has impact
                                        ),
                                      ),

                                      ]
                                  )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Container(
                                child: Text("With a view overlooking the Arabian Sea and the Bandra Worli Sea Link, and located just 656 feet from the seafront"),
                              ),
                              SizedBox(height: 10,),
                            ],
                          ),
                      ),
                    ),
                  ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/bed.jpg', height: 100, width: 100,),
                                SizedBox(width: 10,),
                                Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        child: Text(
                                          "Name",
                                          textAlign: TextAlign.start, // has impact
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 200,
                                        child: Text(
                                          "Designation",
                                          textAlign: TextAlign.start, // has impact
                                        ),
                                      ),

                                    ]
                                )
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Text("With a view overlooking the Arabian Sea and the Bandra Worli Sea Link, and located just 656 feet from the seafront"),
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/k.jpg', height: 100, width: 100,),
                                SizedBox(width: 10,),
                                Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        child: Text(
                                          "Name",
                                          textAlign: TextAlign.start, // has impact
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 200,
                                        child: Text(
                                          "Designation",
                                          textAlign: TextAlign.start, // has impact
                                        ),
                                      ),

                                    ]
                                )
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Text("With a view overlooking the Arabian Sea and the Bandra Worli Sea Link, and located just 656 feet from the seafront"),
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/bed.jpg', height: 100, width: 100,),
                                SizedBox(width: 10,),
                                Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        child: Text(
                                          "Name",
                                          textAlign: TextAlign.start, // has impact
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 200,
                                        child: Text(
                                          "Designation",
                                          textAlign: TextAlign.start, // has impact
                                        ),
                                      ),

                                    ]
                                )
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Text("With a view overlooking the Arabian Sea and the Bandra Worli Sea Link, and located just 656 feet from the seafront"),
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 340.0,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/k.jpg', height: 100, width: 100,),
                                SizedBox(width: 10,),
                                Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        child: Text(
                                          "Name",
                                          textAlign: TextAlign.start, // has impact
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        width: 200,
                                        child: Text(
                                          "Designation",
                                          textAlign: TextAlign.start, // has impact
                                        ),
                                      ),

                                    ]
                                )
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Text("With a view overlooking the Arabian Sea and the Bandra Worli Sea Link, and located just 656 feet from the seafront"),
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Text("Enquire Now", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                child: Text("Just share your Details & we shall get back to you shortly", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(
                    color: Colors.white,
                    width: 1,
                  )
              ),
              color: Colors.white,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  TextFormField(
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value){
                      if(value.isEmpty){
                        return "Please enter your password";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle, color: Colors.black,),
                      contentPadding: EdgeInsets.only(top: 15,bottom: 0,left: 15,right: 0),
                      hintText: "First Name",
                      hintStyle: TextStyle(color: Colors.black),

                    ),
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(
                    color: Colors.white,
                    width: 1,
                  )
              ),
              color: Colors.white,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  TextFormField(
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value){
                      if(value.isEmpty){
                        return "Please enter your password";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone, color: Colors.black,),
                      contentPadding: EdgeInsets.only(top: 15,bottom: 0,left: 15,right: 0),
                      hintText: "Mobile Number",
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(
                    color: Colors.white,
                    width: 1,
                  )
              ),
              color: Colors.white,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  TextFormField(
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value){
                      if(value.isEmpty){
                        return "Please enter your password";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email, color: Colors.black,),
                      contentPadding: EdgeInsets.only(top: 15,bottom: 0,left: 15,right: 0),
                      hintText: "Email Id",
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: checkedValue,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue = newValue;
                          });
                        },
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          "I agree with the T&C",
                          textAlign: TextAlign.start, // has impact
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)
              ),
              color: Colors.cyan,
              child: Text("Submit"),
              onPressed: (){
              },
            )

          ],
        ),
      ),
    );
  }
}

final List imgList = [
  "assets/steel_600x400.jpg",
  "assets/banner_600x400.jpg",
  "assets/cement_600x400.jpg"
];

Swiper imageSlider(context){

  return new Swiper(
    autoplay: false,
    duration: 2000,
    itemBuilder: (BuildContext context, int index) {
      return  InkWell(
        onTap: (){
          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => aboutUs()));
          // Route route = MaterialPageRoute(builder: (context) => aboutUs());
          // Navigator.pushReplacement(context, route);
        },
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  imgList[index],
                  fit: BoxFit.fitWidth,
                ),
              ],
            )
          ],
        ),
      );
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(10.0),
      //   ),
      //   elevation: 5,
      //   margin: EdgeInsets.all(1),
      // );
    },
    itemCount: 3,
    viewportFraction: 0.8,
    scale: 0.8,
    //pagination: new SwiperPagination(),
    control: new SwiperControl(),
  );

}
