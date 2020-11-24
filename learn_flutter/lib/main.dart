import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final assetsAudioPlayer = AssetsAudioPlayer();

  final audio = Audio(
    "assets/audios/city_airplane.mp3",
    metas: Metas(
      title: "City",
      artist: "Florent Champigny",
      album: "CountryAlbum",
      image: MetasImage.asset(
        "assets/images/country.jpg",
      ),
    ),
  );

  bool _play = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            _play ? "pause" : "play",
          ),
          onPressed: () {
            setState(() {
              _play = !_play;
              if (_play) {
                assetsAudioPlayer.open(
                  audio,
                  showNotification: true,
                );
              } else {
                assetsAudioPlayer.stop();
              }
            });
          },
        ),
      ),
    );
  }
}
