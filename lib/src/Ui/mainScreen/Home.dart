import 'package:flutter/material.dart';
import 'package:task_jop/src/Ui/mainWidget/CarType.dart';

import 'widgets/filter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(
                height: 200,
                width: double.infinity,
                child: Image.asset(
                  "assets/car.jpg",
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    child: Stack(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(top: 5),
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffc32c37),
                                border:
                                    Border.all(color: Colors.white, width: 1)),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Center(
                                child: Text(
                                  5.toString(),
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.filter_list_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Filter(),
        // Container(
        //   padding: EdgeInsets.all(8.0),
        //   width: double.infinity,
        //   color: Colors.white,
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text('تصفح حسب نوع السيارة'),
        //       Row(
        //         children: [
        //           Expanded(
        //             child: Column(
        //               children: [
        //                 Image.asset(
        //                   'assets/1.png',
        //                   height: 60,
        //                   width: 80,
        //                 ),
        //                 Text('Wagon'),
        //               ],
        //             ),
        //           ),
        //           Expanded(
        //             child: Column(
        //               children: [
        //                 Image.asset(
        //                   'assets/1.png',
        //                   height: 60,
        //                   width: 80,
        //                 ),
        //                 Text('SUV'),
        //               ],
        //             ),
        //           ),
        //           Expanded(
        //             child: Column(
        //               children: [
        //                 Image.asset(
        //                   'assets/1.png',
        //                   height: 60,
        //                   width: 80,
        //                 ),
        //                 Text('Sedan'),
        //               ],
        //             ),
        //           ),
        //           Expanded(
        //             child: Column(
        //               children: [
        //                 Image.asset(
        //                   'assets/1.png',
        //                   height: 60,
        //                   width: 80,
        //                 ),
        //                 Text('Hatchback'),
        //               ],
        //             ),
        //           ),
        //         ],
        //       )
        //     ],
        //   ),
        // ),
        SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.only(top: 5, right: 10, left: 10),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('تصفح حسب الماركة'),
              Text('الكل'),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 8.0),
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: CarType(),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.only(top: 5, right: 5, left: 5),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('جديد الوكالات'),
              Text('الكل'),
            ],
          ),
        ),
        Container(
            color: Colors.white,
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: 5,
                padding: EdgeInsets.symmetric(horizontal: 3.0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Card(
                    elevation: 0,
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                          ),
                          child: Image.asset(
                            'assets/car.jpg',
                            height: 120,
                            width: 200,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Audi A8'),
                              Row(
                                children: [
                                  Text('تبدا من'),
                                  Text('12000 ك.د'),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
