import 'package:fintech/common/color_extensions.dart';
import 'package:fintech/common_widget/custom_arc_painter.dart';
import 'package:fintech/common_widget/listing.dart';
import 'package:fintech/common_widget/segment_button.dart';
import 'package:fintech/common_widget/status_button.dart';
import 'package:flutter/material.dart';

class PageHomeView extends StatefulWidget {
  const PageHomeView({Key? key}) : super(key: key);

  @override
  State<PageHomeView> createState() => _PageHomeViewState();
}

class _PageHomeViewState extends State<PageHomeView> {
  bool isSubscription = true;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/plain.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: media.width * 1.1,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: TColor.gray70.withOpacity(0.5),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/images/home_bg.png"),
                      Container(
                        padding: EdgeInsets.only(bottom: media.width * 0.05),
                        width: media.width * 0.72,
                        height: media.width * 0.72,
                        child: CustomPaint(
                          painter: CustomArcPainter(
                            end: 120,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: media.width * 0.05),
                          Image.asset(
                            "assets/images/llo.png",
                            width: media.width * 0.35,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: media.width * 0.07),
                          Text(
                            "\₹35,000",
                            style: TextStyle(
                              color: TColor.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: media.width * 0.055),
                          Text(
                            "Revenue on Collection",
                            style: TextStyle(
                              color: TColor.gray40,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: media.width * 0.02),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: TColor.border.withOpacity(0.15),
                                ),
                                color: TColor.gray60.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Text(
                                "See Your Impact",
                                style: TextStyle(
                                  color: TColor.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const Spacer(),
                            Row(
                              children: [
                                Expanded(
                                  child: StatusButton(
                                    title: "Invested Amount",
                                    value: "\₹25,000",
                                    onPressed: () {},
                                    statuscolor: TColor.secondary,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: StatusButton(
                                    title: "       Return on \nInvestment (ROI)",
                                    value: "40%",
                                    onPressed: () {},
                                    statuscolor: TColor.primary10,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: StatusButton(
                                    title: "  Total Gain on \n    Investment",
                                    value: "\₹35,000",
                                    onPressed: () {},
                                    statuscolor: TColor.secondaryG,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                  height: 47,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: SegmentButton(
                              title: "My Startups",
                              isActive: isSubscription,
                              onPressed: () {
                                setState(() {
                                  isSubscription = !isSubscription;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Container for Moyaii text
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    'Moyaii',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 2,
            child: Container(
              color: Colors.white.withOpacity(0.1), // Optional background color
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/home.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Listing()));
                    },
                    icon: Image.asset(
                      "assets/images/center_btn.png",
                      width: 120,
                      height: 120,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/creditcards.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
