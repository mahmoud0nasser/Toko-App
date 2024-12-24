import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toko_app/models/number.dart';

import 'item_info.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.number,
    required this.color,
  });

  final ItemModel number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      // color: Color(0xffEF9235),
      color: color,
      child: Row(
        children: [
          number.image == null
              ? SizedBox()
              : Container(
                  color: Color(0xffFFF6DC),
                  child: Image.asset(
                    number.image!,
                  ),
                ),
          Expanded(
            child: ItemInfo(
              itemModel: number,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemFamily extends StatelessWidget {
  const ItemFamily({
    super.key,
    required this.item,
    required this.color,
  });

  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      color: color,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 92.0,
              child: CircleAvatar(
                radius: 90.0,
                backgroundColor: Color.fromARGB(255, 199, 80, 80),
                backgroundImage: AssetImage(item.image!),
              ),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Engilsh Word',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          100.0,
                        ),
                        topRight: Radius.circular(
                          100.0,
                        ),
                        bottomRight: Radius.circular(
                          100.0,
                        ),
                      ),
                    ),
                    child: Text(
                      item.enName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                width: 54.0,
                height: 54.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(205, 54, 244, 82),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: IconButton(
                  onPressed: () {
                    // Play Sound
                    final player = AudioPlayer();
                    player.play(
                      AssetSource(
                        item.sound,
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    'Japanese Word',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          100.0,
                        ),
                        topRight: Radius.circular(
                          100.0,
                        ),
                        bottomRight: Radius.circular(
                          100.0,
                        ),
                      ),
                    ),
                    child: Text(
                      item.jpName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Flutter Cannot Access Hardware