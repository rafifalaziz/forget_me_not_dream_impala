import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ActivityCardState();
  }
}

class _ActivityCardState extends State<ActivityCard> {
  @override
  bool _isDone = false;

  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double widthCard = widthScreen * 0.9;
    return Container(
      width: widthCard,
      height: widthCard * 0.4,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.green,
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Activity Name - Clock"),
              Text("Notes : "),
              Text("Fill Notes"),
            ],
          ),
          InkWell(
              onTap: () {
                setState(() {
                  _isDone ? _isDone = false : _isDone = true;
                });
              },
              child: _isDone
                  ? const Icon(
                      Icons.check_circle_rounded,
                      color: Colors.lightGreen,
                      size: 50,
                    )
                  : const Icon(
                      Icons.circle,
                      color: Colors.lightGreen,
                      size: 50,
                    ))
        ],
      ),
    );
  }
}
