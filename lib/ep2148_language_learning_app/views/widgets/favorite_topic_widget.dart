import 'package:flutter/material.dart';

class FavoriteTopicWidget extends StatefulWidget {
  const FavoriteTopicWidget({super.key});

  @override
  State<FavoriteTopicWidget> createState() => _FavoriteTopicWidgetState();
}

class _FavoriteTopicWidgetState extends State<FavoriteTopicWidget> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        spacing: 8,
        children: [
          ListTile(
            title: Text(
              "Famous Speeches",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text("I have a dream"),
            leading: Icon(Icons.campaign_outlined),
            trailing: Icon(
              Icons.chevron_right,
            ),
          ),
          Divider(
            height: 8,
          ),
          ListTile(
            title: Text(
              "Famous Speeches",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text("I have a dream"),
            leading: Icon(Icons.campaign_outlined),
            trailing: Icon(
              Icons.chevron_right,
            ),
          ),
          Divider(
            height: 8,
          ),
          ListTile(
            title: Text(
              "Famous Speeches",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text("I have a dream"),
            leading: Icon(Icons.campaign_outlined),
            trailing: Icon(
              Icons.chevron_right,
            ),
          ),
          Divider(
            height: 8,
          ),
          ListTile(
            title: Text(
              "Famous Speeches",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text("I have a dream"),
            leading: Icon(Icons.campaign_outlined),
            trailing: Icon(
              Icons.chevron_right,
            ),
          ),
        ],
      ),
    );
  }
}
