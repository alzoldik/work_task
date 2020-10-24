import 'package:flutter/material.dart';

class CarType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 5),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (c, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            height: 40,
            width: 60,
            // padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.grey,
                )),
            child: Image.asset(
              'assets/bmw.png',
            ),
          ),
        );
      },
    );
  }
}
