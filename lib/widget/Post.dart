import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.fill),
                  ),
                ),
                title: Text('nnomn'),
                subtitle: Text('Hadrahmout,Yemen'),
                trailing: Icon(Icons.more_vert),
              ),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://yemenembassy.pk/wp-content/uploads/2021/01/Hadhramaut-2.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              ListTile(
                leading: Wrap(spacing: 10, children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 32,
                  ),
                  Image.asset(
                    "assets/images/comment.png",
                    width: 27,
                  ),
                  Image.asset("assets/images/send.png", width: 27)
                ]),
                trailing: Icon(
                  Icons.bookmark_border_outlined,
                  size: 35,
                  color: Colors.black,
                ),
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    '1000 likes',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ]),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'is there anything new?',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ]),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'view all 20 comments',
                    style: TextStyle(),
                  ),
                ),
              ]),
              ListTile(
                leading: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.fill),
                  ),
                ),
                title: Text('Add a comment...'),

                trailing: Wrap(spacing: 10, children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 20,
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    //color: Colors.red,
                    size: 20,
                  ),
                ]),

                //subtitle: Text('Hadrahmout,Yemen'),
                //trailing: Icon(Icons.more_vert),
              ),
            ],
          );
        });
  }
}
