import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HrOtpPage extends StatefulWidget {
  const HrOtpPage({super.key});

  @override
  State<HrOtpPage> createState() => _HrOtpPageState();
}

class _HrOtpPageState extends State<HrOtpPage> {
  List<String> pads = ["1", "2", "3", "4", "5", "6", "7", "8", "9", ".", "0", ""];
  String opt = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            spacing: 20,
            children: [
              Gap(8),
              Container(
                height: 52,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Icon(Icons.arrow_back_ios_new_sharp),
                      ),
                    ),
                    Center(
                      child: Text(
                        "OTP Verification",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Gap(8),
              Text("Please check your phone. We have to sent the code verification to your email."),
              Gap(24),
              Container(
                height: 48,
                // color: Colors.blue,
                child: Row(
                  spacing: 12,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 48,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueGrey[100]!,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          opt.isNotEmpty ? opt[0] : "",
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueGrey[100]!,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(opt.length > 1 ? opt[1] : ""),
                      ),
                    ),
                    Container(
                      width: 48,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueGrey[100]!,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ), child: Center(
                      child: Text(opt.length > 2 ? opt[2] : ""),
                    ),
                    ),
                    Container(
                      width: 48,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueGrey[100]!,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ), child: Center(
                      child: Text(opt.length > 3? opt[3] : ""),
                    ),
                    ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Resend code in ",
                    ),
                    TextSpan(
                      text: "01:29",
                    ),
                  ],
                ),
              ),
              Gap(42),
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Color(0xFF33BF7F),
                ),
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Center(
                  child: Text(
                    "Verify",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: GridView.builder(
                shrinkWrap: true,
                itemCount: pads.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 1.5),
                itemBuilder: (context, index) {
                  final item = pads[index];
                  if (index == pads.length - 1) {
                    return Center(
                        child: IconButton(
                      onPressed: () {
                        if (opt.isNotEmpty) {
                          setState(() {
                            opt = opt.substring(0, opt.length - 1);
                          });
                        }
                      },
                      icon: Icon(
                        Icons.backspace_outlined,
                      ),
                    ));
                  }
                  return InkWell(
                    onTap: () {
                      if(opt.length > 4){
                        return;
                      }
                      setState(() {
                        opt += item;
                        print(opt);
                      });
                    },
                    child: Center(
                      child: Text(
                        item,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  );
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
