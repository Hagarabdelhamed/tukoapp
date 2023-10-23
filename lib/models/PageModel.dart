
import 'package:audioplayers/audioplayers.dart';

class PageModel {
  final String sound;
  final String? image;
  final String japText;
  final String engText;

  const PageModel(
      {required this.sound, this.image, required this.japText, required this.engText});

      playsound(){
         final player = AudioPlayer();

                player.play(AssetSource(sound));
      }
}
