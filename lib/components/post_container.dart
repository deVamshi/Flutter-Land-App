import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:transparent_image/transparent_image.dart';

class PostContainer extends StatelessWidget {
  final Random rnd = Random();
  final List<Color> _colors = [
    Colors.red[200],
    Colors.blue[200],
    Colors.amber[200],
    Colors.orange[200],
    Colors.indigo[200],
    Colors.teal[200],
  ];
  String imageUrl;
  String profilePicUrl;
  PostContainer({this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        children: [
          //     :
          ListTile(
            title: Text(
              "Vamshidhar",
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            subtitle: Text(
              "8 min ago",
              style: TextStyle(fontSize: 12),
            ),
            leading: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1611774812120-79d97450b31c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8bWFuJTIwcHJvZmlsZSUyMGltYWdlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),
            ),
          ),
          Card(
            color: Colors.transparent,
            elevation: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: imageUrl,
              ),

              //     CachedNetworkImage(
              //   imageUrl: imageUrl,
              // ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                ),
                Text(
                  "56",
                  style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    LineAwesomeIcons.code_file,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
