import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_land/constants/builders.dart';
import 'package:flutter_land/constants/colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyProfilePage extends StatelessWidget {
  final List<String> images = [
    'https://images.unsplash.com/photo-1614366125291-0d806cacf99b?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNnx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614423236342-ac33f28554c6?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1601933470096-0e34634ffcde?ixid=MXwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
    'https://images.unsplash.com/photo-1614373371549-c7d2e4885f17?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
    'https://images.unsplash.com/photo-1614366765963-d6bcba6612aa?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
    'https://images.unsplash.com/photo-1614257038454-549bfefc951c?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
    'https://images.unsplash.com/photo-1614360836545-12c96ac15e2b?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyN3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614347970211-c5386d4ef422?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNnx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614366125291-0d806cacf99b?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNnx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614423236342-ac33f28554c6?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1601933470096-0e34634ffcde?ixid=MXwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
    'https://images.unsplash.com/photo-1614373371549-c7d2e4885f17?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
    'https://images.unsplash.com/photo-1614366765963-d6bcba6612aa?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
    'https://images.unsplash.com/photo-1614257038454-549bfefc951c?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
    'https://images.unsplash.com/photo-1614360836545-12c96ac15e2b?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyN3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614347970211-c5386d4ef422?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNnx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          buildProfileComponent(context),
          Divider(),
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            crossAxisCount: 4,
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) => Card(
              elevation: 10,
              color: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: CachedNetworkImage(
                  imageUrl: images[index],
                ),
              ),
            ),
            staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
          ),
        ],
      ),
    );
  }
}

Widget buildProfileComponent(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        Container(
          height: 140,
          width: MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            image: DecorationImage(
              onError: (dynamic, StackTrace trace) {
                print(trace);
                print("in on error in profile page");
              },
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                'https://images.unsplash.com/photo-1611774812120-79d97450b31c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8bWFuJTIwcHJvZmlsZSUyMGltYWdlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),
            ),
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[200],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  title: Text(
                    "Vamshidhar",
                    style: buildHeadingTextStyle(),
                  ),
                  subtitle: Text("Flutter App Developer"),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "243",
                          style: buildFollowTextStyle(),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Photos",
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "555",
                          style: buildFollowTextStyle(),
                        ),
                        SizedBox(height: 5),
                        Text("Followers"),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "54",
                          style: buildFollowTextStyle(),
                        ),
                        SizedBox(height: 5),
                        Text("Following"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
