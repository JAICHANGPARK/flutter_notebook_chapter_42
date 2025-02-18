import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AiScannerMainScreen extends StatefulWidget {
  const AiScannerMainScreen({super.key});

  @override
  State<AiScannerMainScreen> createState() => _AiScannerMainScreenState();
}

class _AiScannerMainScreenState extends State<AiScannerMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.info_outline),
                  ),
                  Badge(
                    child: Icon(
                      Icons.notifications_none,
                    ),
                    alignment: Alignment.topLeft,
                    label: Text("5"),
                  ),
                ],
              ),
              Container(
                height: 110,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi Dream,",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(115, 120, 119, 1),
                            fontSize: 42,
                            height: 1.2,
                          ),
                        ),
                        Text(
                          "How can I help\nyou today?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 42,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                    Gap(24),
                    Container(
                      height: 280,
                      child: Row(
                        spacing: 8,
                        children: [
                          Expanded(
                              child: Column(
                            spacing: 8,
                            children: [
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                width: double.infinity,
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.document_scanner_outlined),
                                    Gap(12),
                                    Text(
                                      "Scan",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Documents, ID cards...",
                                    )
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                width: double.infinity,
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.document_scanner_outlined),
                                    Gap(12),
                                    Text(
                                      "Edit",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Documents, ID cards...",
                                    )
                                  ],
                                ),
                              )),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            spacing: 8,
                            children: [
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                width: double.infinity,
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.document_scanner_outlined),
                                    Gap(12),
                                    Text(
                                      "Convert",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Documents, ID cards...",
                                    )
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                width: double.infinity,
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.document_scanner_outlined),
                                    Gap(12),
                                    Text(
                                      "Ask AI",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Documents, ID cards...",
                                    )
                                  ],
                                ),
                              )),
                            ],
                          )),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mic),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.black,
                            ),
                            padding: EdgeInsets.all(4),

                            child: Row(
                              spacing: 8,
                              children: [
                                CircleAvatar(
                                  radius: 26,
                                  backgroundColor: Colors.white,
                                ),
                                CircleAvatar(
                                  radius: 26,
                                  backgroundColor: Colors.white.withValues(alpha: .3),
                                ),
                              ],
                            ),
                          ),
                          CircleAvatar(
                            radius: 32,
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            child: Icon(
                              Icons.add_circle_outline,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
