import 'package:flutter/material.dart';
import 'package:photo_redesign/models/playlist.dart';
import 'package:photo_redesign/widgets/item_playlist.dart';

class ListViewPlayLists extends StatefulWidget {
  @required
  List<PlayList> _list;
  ListViewPlayLists(this._list);
  @override
  _ListViewPlayListsState createState() => _ListViewPlayListsState(_list);
}

class _ListViewPlayListsState extends State<ListViewPlayLists> {
  @required
  List<PlayList> _list;
  _ListViewPlayListsState(this._list);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: Colors.white,
      child: ListView.builder(
        itemCount: _list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return ItemPlayList(_list);
        },
      ),
    );
  }
}
