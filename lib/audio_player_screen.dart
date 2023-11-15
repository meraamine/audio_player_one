import 'package:flutter/material.dart';
import 'audio_asset.dart';
import 'audio_player_manager.dart';

class AudioPlayerScreen extends StatefulWidget {
  @override
  _AudioPlayerScreenState createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  AudioPlayerManager audioPlayerManager = AudioPlayerManager();

  @override
  void dispose() {
    audioPlayerManager.audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[400],
        title: Text(
          'Audio Player Application',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: audioAssets.length,
        itemBuilder: (context, index) {
          final asset = audioAssets[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor:Colors.blue[200],
              title: Text(asset.title),
              subtitle: Text(asset.subtitle),
              leading: Icon(Icons.play_arrow ),
              onTap: () => audioPlayerManager.playAudio(asset),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.play_arrow), onPressed: () {}
                // onPressed:audioPlayerManager.playAudio(),
                ),
            IconButton(
              icon: Icon(Icons.pause),
              onPressed: audioPlayerManager.pauseAudio,
            ),
            IconButton(
              icon: Icon(Icons.stop),
              onPressed: audioPlayerManager.stopAudio,
            ),
          ],
        ),
      ),
    );
  }
}
