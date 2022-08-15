import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Current_Affairs_Widget extends StatelessWidget {
  const Current_Affairs_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: Container(
            decoration: BoxDecoration(
                color: Color(0xFF232f76),
                borderRadius: BorderRadius.circular(50)),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Icon(
                Icons.feed_outlined,
                color: Color(0xFFFFFFFF),
                size: 28,
              ),
            )),
        title: Text("Daily Current Affairs"),
        subtitle: Text("Read daily news in just 10 mins"),
        trailing: Container(
            decoration: BoxDecoration(
                color: Color(0xFFdde7f6),
                borderRadius: BorderRadius.circular(50)),
            child: const Padding(
              padding: EdgeInsets.all(6.0),
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color(0xFF6a8dcb),
                size: 12,
              ),
            )),
      ),
    );
  }
}
