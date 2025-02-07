import 'package:flutter/material.dart';

class LlaTextInputWidget extends StatefulWidget {
  const LlaTextInputWidget({super.key});

  @override
  State<LlaTextInputWidget> createState() => _LlaTextInputWidgetState();
}

class _LlaTextInputWidgetState extends State<LlaTextInputWidget> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextField(),
              ),
              CircleAvatar(),
            ],
          ),
        ),
        Row(
          spacing: 12,
          children: [
            Icon(
              Icons.add_box_outlined,
              size: 16,
            ),
            Icon(
              Icons.add_to_drive,
              size: 16,
            ),
            Icon(
              Icons.add_photo_alternate_outlined,
              size: 16,
            ),
          ],
        )
      ],
    );
  }
}
