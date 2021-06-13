import 'package:flutter/material.dart';
import 'package:sophron_task/constants.dart';

// ignore: must_be_immutable
class ArticleCard extends StatelessWidget {
  ArticleCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  Radius circularRaduis20 = Radius.circular(20);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: MyColor.colorList[index],
          borderRadius: BorderRadius.all(
            circularRaduis20,
          ),
        ),
        child: Column(
          children: [
            Container(
              child:
                  Image.network('https://source.unsplash.com/random/400x300'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              Kstrings.titles[index],
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              Kstrings.paragraphs[index],
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Spacer(),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: circularRaduis20,
                  bottomRight: circularRaduis20,
                ),
              ),
              child: Center(
                child: Text('Swipe up for next article',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
