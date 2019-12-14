import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:shimmer/shimmer.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "sHIMER EFFECT",
      home:Homepage(),
    );
  }
}
class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    body:Container(
      margin: EdgeInsets.only(left: 120,top:340,right: 120),


      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Shimmer.fromColors(
              child: Container(
                height:40.0 ,
                width: 30.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),
              ),
              baseColor: Colors.red,
              highlightColor: Colors.white),
          Row(

            children: <Widget>[
              Shimmer.fromColors(
                  child: Container(
                    height:40.0 ,
                    width: 30.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),
                  ),
                  baseColor: Colors.orange,
                  highlightColor: Colors.white),
              Row(

                children: <Widget>[
                  Shimmer.fromColors(
                      child: Container(
                        height:40.0 ,
                        width: 30.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                      ),
                      baseColor: Colors.green,
                      highlightColor: Colors.white),
                  Row(

                    children: <Widget>[
                      Shimmer.fromColors(
                          child: Container(
                            height:40.0 ,
                            width: 30.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orange,
                            ),
                          ),
                          baseColor: Colors.blue,
                          highlightColor: Colors.white)
                    ],
                  )
                ],
              )
            ],
          )
        ],


      ),
    )
    );
  }
}