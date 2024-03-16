import 'package:fintech/common/color_extensions.dart';
import 'package:fintech/common_widget/custom_arc_painter.dart';
import 'package:fintech/common_widget/segment_button.dart';
import 'package:fintech/common_widget/sip_home_row.dart';
import 'package:fintech/common_widget/status_button.dart';
import 'package:fintech/common_widget/watchlist_row.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isSubscription = true;
  List subArr = [
    {
      "name": "MOYAII",
      "icon": "assets/images/mid_cap.png",
      "price": "12,000.00",
      "tag": "COLLEGE"
    },
    {
      "name": "KRUTRIM",
      "icon": "assets/images/large_cap.png",
      "price": "25,000.00",
      "tag": "ENTERPRISE"
    },
    {
      "name": "PHARMACARE",
      "icon": "assets/images/mid_cap.png",
      "price": "18,000.00",
      "tag": "COLLEGE"
    },
    {
      "name": "CAUSECOMPASS",
      "icon": "assets/images/small_cap.png",
      "price": "2,000.00",
      "tag": "COLLEGE"
    },
    {
      "name": "EUCLA",
      "icon": "assets/images/large_cap.png",
      "price": "3,000.00",
      "tag": "ENTERPRISE"
    },
  ];

  List bilArr = [
    {
      "name": "Quant Small Cap Fund",
      "date": DateTime(2024, 07, 25),
      "price": "₹20,000.00"
    },
    {
      "name": "Quant Infra Fund",
      "date": DateTime(2024, 04, 16),
      "price": "₹15,000.00"
    },
    {
      "name": "Quant Mid Cap Fund",
      "date": DateTime(2024, 08, 27),
      "price": "₹12,000.00"
    },
    {
      "name": "Nippon India Power & Infra Fund",
      "date": DateTime(2024, 11, 18),
      "price": "₹10,000.00"
    },
    {
      "name": "Invesco India Small Cap Fund",
      "date": DateTime(2025, 2, 12),
      "price": "₹5,000.00"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/plain.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
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
                    )),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("assets/images/home_bg.png"),
                    Container(
                      padding: EdgeInsets.only(bottom: media.width*0.05),
                      width: media.width * 0.72,
                      height: media.width * 0.72,
                      child: CustomPaint(
                        painter: CustomArcPainter(end: 220,),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: media.width*0.05),
                        Image.asset("assets/images/llo.png",
                            width: media.width * 0.35, fit: BoxFit.contain),
                        SizedBox(height: media.width*0.07),
                        Text(
                          "\₹85,000",
                          style: TextStyle(
                              color: TColor.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: media.width*0.055),
                        Text(
                          "Total Revenue Generated",
                          style: TextStyle(
                              color: TColor.gray40,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: media.width*0.02),
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
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
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
                                  value: "\₹60,000",
                                  onPressed: () {},
                                  statuscolor: TColor.secondary,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: StatusButton(
                                  title:
                                      "        Return on \n Investment (ROI)",
                                  value: "41.66%",
                                  onPressed: () {},
                                  statuscolor: TColor.primary10,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: StatusButton(
                                  title: "Total Gain on \n  Investment",
                                  value: "\₹85,000",
                                  onPressed: () {},
                                  statuscolor: TColor.secondaryG,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Expanded(
                      child: SegmentButton(
                        title: "Invested Enterprises",
                        isActive: isSubscription,
                        onPressed: () {
                          setState(() {
                            isSubscription = !isSubscription;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: SegmentButton(
                        title: "Watchlist",
                        isActive: !isSubscription,
                        onPressed: () {
                          setState(() {
                            isSubscription = !isSubscription;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
              if (isSubscription)
                ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: subArr.length,
                  itemBuilder: (context, index) {
                    var sObj = subArr[index] as Map<String, dynamic>? ?? {};

                    return SIPHomeRow(sObj: sObj, onPressed: () {});
                  },
                ),
              if (!isSubscription)
                ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: subArr.length,
                  itemBuilder: (context, index) {
                    var sObj = subArr[index] as Map<String, dynamic>? ?? {};

                    return WatchlistRow(sObj: sObj, onPressed: () {});
                  },
                ),
              const SizedBox(height: 110),
            ],
          ),
        ),
      ),
    );
  }
}
