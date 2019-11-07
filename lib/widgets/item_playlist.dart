import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:photo_redesign/models/playlist.dart';

class ItemPlayList extends StatefulWidget {
  @required
  PlayList playList;
  ItemPlayList(this.playList);

  @override
  _ItemPlayListState createState() => _ItemPlayListState(playList);
}

class _ItemPlayListState extends State<ItemPlayList> {
  @required
  PlayList playList;
  _ItemPlayListState(this.playList);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 300,
            width: 240,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.jpg'), // Aqui você deve colocar a Thumb da PlayList playList.capa
                ),
                borderRadius: BorderRadius.circular(30)),
          ),
          Container(
            height: 300,
            width: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromARGB(0, 0, 0, 0), Colors.blueGrey[500]]),
            ),
          ),
          Positioned(
            child: Text(
              playList.nome, // Nome da PlayList
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Google',
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            left: 18,
            top: 160,
          ),
          Positioned(
            child: Text(
              'Seguidores', // Seguidores da PlayList
              style: TextStyle(
                  color: Colors.grey[300],
                  fontFamily: 'Google',
                  fontSize: 12),
            ),
            left: 110,
            top: 220,
          ),
          Positioned(
            child: Text(
              playList.numseguidores, // Quantidade de seguidores da PlayList
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Google',
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            left: 110,
            top: 240,
          ),
          Positioned(
            left: 18,
            top: 210,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.play,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.tealAccent, Colors.teal]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
