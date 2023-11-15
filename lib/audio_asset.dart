class AudioAsset {
  final String title;
  final String subtitle;
  final String assetPath;


  AudioAsset( {required this.title, required this.assetPath,required this.subtitle});
}

List<AudioAsset> audioAssets = [
  AudioAsset(title: 'Audio 1',subtitle: 'audio 1', assetPath: 'assets/audios/audio_file_1.mp3'),
  AudioAsset(title: 'Audio 2',subtitle: 'audio 2',assetPath: 'assets/audios/audio_file_2.mp3'),
  AudioAsset(title: 'Audio 3',subtitle: 'audio 3', assetPath: 'assets/audios/audio_file_3.mp3'),
  AudioAsset(title: 'Audio 4',subtitle: 'audio 4', assetPath: 'assets/audios/audio_file_4.mp3'),
  AudioAsset(title: 'Audio 5',subtitle: 'audio 5',assetPath: 'assets/audios/audio_file_5.mp3'),
  AudioAsset(title: 'Audio 6',subtitle: 'audio 6',assetPath: 'assets/audios/audio_file_6.mp3'),
  AudioAsset(title: 'Audio 7',subtitle: 'audio ',assetPath: 'assets/audios/audio_file_7.mp3'),
  AudioAsset(title: 'Audio 8',subtitle: 'audio 8',assetPath: 'assets/audios/audio_file_8.mp3'),
  // Add more audio assets as needed
];