import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  List<dynamic> story = [
    {'images': 'assets/images/profile.png', "username": "nnomn"},
    {'images': 'assets/images/profile.png', "username": "nnomn"},
    {'images': 'assets/images/profile.png', "username": "nnomn"},
    {'images': 'assets/images/profile.png', "username": "nnomn"},
    {'images': 'assets/images/profile.png', "username": "nnomn"},
    {'images': 'assets/images/profile.png', "username": "nnomn"},
    {'images': 'assets/images/profile.png', "username": "nnomn"},
    {'images': 'assets/images/profile.png', "username": "nnomn"},
    {'images': 'assets/images/profile.png', "username": "nnomn"},
    {'images': 'assets/images/profile.png', "username": "nnomn"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(10, (index) {
                return Padding(
                  padding: const EdgeInsets.all(7),
                  child: Column(children: [
                    Container(
                        width: 67,
                        height: 67,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF982282), Color(0xFFEEA863)]),
                        ),
                        child: Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage('${story[index]["images"]}'),
                                    fit: BoxFit.fill),
                                boxShadow: [
                                  BoxShadow(color: Colors.grey, spreadRadius: 1)
                                ],
                              ),
                            ),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Text('${story[index]["username"]}'),
                    )
                  ]),
                );
              }),
            ),
          )),
    ]);
  }
}
