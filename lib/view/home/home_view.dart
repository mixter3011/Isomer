import 'package:fintech/common/color_extensions.dart';
import 'package:fintech/common_widget/segment_button.dart';
import 'package:fintech/common_widget/sip_home_row.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isSubscription = true;
  List subArr = [
    {"name": "Quant Small Cap Fund Direct Plan", "icon": "assets/images/sip_with_500.png", "price": "₹12,000.00"},
    {"name": "Nippon India Small Cap Fund Direct Growth", "icon": "assets/images/sip_with_500.png", "price": "₹25,000.00"},
    {"name": "Aditya Birla Small Cap Fund Direct Plan Growth", "icon": "assets/images/sip_with_500.png", "price": "₹18,000.00"},
    {"name": "TATA AIA Top 200 Fund", "icon": "assets/images/sip_with_500.png", "price": "₹2,000.00"},
    {"name": "PNB METLIFE Virtue II", "icon": "assets/images/sip_with_500.png", "price": "₹3,000.00"},
  ];

  List bilArr = [
    {"name":"Quant Small Cap Fund", "date": DateTime(2024,07,25), "price" : "₹20,000.00"},
    {"name":"Quant Infra Fund", "date": DateTime(2024,04,16), "price" : "₹15,000.00"},
    {"name":"Quant Mid Cap Fund", "date": DateTime(2024,08,27), "price" : "₹12,000.00"},
    {"name":"Nippon India Power & Infra Fund", "date": DateTime(2024,11,18), "price" : "₹10,000.00"},
    {"name":"Invesco India Small Cap Fund", "date": DateTime(2025,2,12), "price" : "₹5,000.00"},
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
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
                decoration: BoxDecoration(
                  color: TColor.gray70.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Expanded(
                        child: SegmentButton(
                          title: "SIP",
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
                            title: "Funds",
                            isActive:  !isSubscription, 
                            onPressed: () {
                              setState(() {
                                isSubscription = !isSubscription;
                              });
                            }, 
                            ))
                    ],
                  ),
              ),
              if(isSubscription)
              ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: subArr.length,
                itemBuilder: (context, index) {
                  var sObj = subArr[index] as Map? ?? {};

                  return SIPHomeRow(sObj: sObj, onPressed: () {}
                 );
                }),
                if(!isSubscription)
              ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: subArr.length,
                itemBuilder: (context, index) {
                  var sObj = subArr[index] as Map? ?? {};

                  return SIPHomeRow(sObj: sObj, onPressed: () {}
                 );
                }),
                const SizedBox(height: 110),
            ],
          )),
      ),
    );
  }
}