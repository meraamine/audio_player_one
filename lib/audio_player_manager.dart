import 'package:audioplayers/audioplayers.dart';
import 'audio_asset.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class AudioPlayerManager {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioAsset? currentAsset;

  Future<void> playAudio(AudioAsset asset) async {
    if (currentAsset == asset) {
      // Resume playback if the same asset is selected
      audioPlayer.resume();
    } else {
      // Play new asset
      audioPlayer.stop();
      await audioPlayer.play(asset.assetPath as Source);
     // await audioPlayer.play(Source.uri(Uri.parse(asset.assetPath)));
      currentAsset = asset;
    }
  }

  Future<void> pauseAudio() async {
    await audioPlayer.pause();
  }

  Future<void> stopAudio() async {
    await audioPlayer.stop();
    currentAsset = null;
  }
}