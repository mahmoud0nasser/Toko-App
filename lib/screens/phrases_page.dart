import 'package:flutter/material.dart';
import 'package:toko_app/components/item.dart';

import '../models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(
      jpName: 'Kimasu ka?',
      enName: 'Are You Coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      jpName: 'Wasurezu ni kōdoku shite kudasai',
      enName: 'Don\'t Forget to Subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      jpName: 'Go kibun wa ikagadesu ka?',
      enName: 'How Are You Feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I Love Anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      jpName: 'Watashi wa puroguramingu ga daisukidesu.',
      enName: 'I love Programming.',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'Programming is Easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      jpName: 'Anata no namae wa nanidesu ka?',
      enName: 'What is Your Name?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      jpName: 'Doko ni iku no?',
      enName: 'Where are You Going?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      jpName: 'Hai, ikimasu',
      enName: 'Yes, I\'m Comming',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          'Phrases',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Item(
          number: phrases[index],
          color: Color(0xff50ADC7),
        ),
        itemCount: phrases.length,
      ),
    );
  }
}
