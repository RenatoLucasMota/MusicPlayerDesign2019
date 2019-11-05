import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:photo_redesign/widgets/itemsong.dart';

class ListViewSong extends StatefulWidget {
  @required
  int itemCount;
  ListViewSong(this.itemCount);
  @override
  _ListViewSongState createState() => _ListViewSongState(itemCount);
}

class _ListViewSongState extends State<ListViewSong> {
  @required
  int itemCount;
  _ListViewSongState(this.itemCount);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: Colors.white,
      child: ListView.builder(
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return ItemSong();
        },
      ),
    );
  }
}
