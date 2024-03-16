import 'package:fintech/common_widget/college_detail.dart';
import 'package:fintech/common_widget/college_home_row.dart';
import 'package:fintech/common_widget/enterprise_detail.dart';
import 'package:fintech/common_widget/enterprise_home_row.dart';
import 'package:fintech/common_widget/segment_button.dart';
import 'package:flutter/material.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  bool isSubscription = true;
  List subArr = [
    {
      "name": "Merakiu promotes Female Entrepreneurship",
      "icon": "assets/images/Merakiu-removebg-preview.png",
      "price": "",
      "tag": ""
    },
    {
      "name": "wovoyage advances Women-friendly Travel",
      "icon": "assets/images/wovayage-removebg-preview.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
    {
      "name": "Romoni encourages Women Micro-entrepreneurship",
      "icon": "assets/images/romoni.png",
      "price": "",
      "tag": "COLLEGE"
    },
    {
      "name": "Firmsy is artificial intelligence-driven lawyer bot.",
      "icon": "assets/images/Firmsy-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "COLLEGE"
    },
    {
      "name": "Abartys Health is healthcare market through automation. ",
      "icon": "assets/images/abartys-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
    {
      "name": "Karma solve food waste by selling unsold food at discounted prices. ",
      "icon": "assets/images/karma-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
    {
      "name": "Klasha is the new fashion e-commerce store ",
      "icon": "assets/images/Klasha-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
    {
      "name": "EmptyTrips a platform connecting transporters with companies that wish to transport their products.",
      "icon": "assets/images/EmptyTrips-ezgif.com-webp-to-png-converter-removebg-preview - Copy.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
    {
      "name": "Agrowave: Farm2Business mobility connecting farmers to markets via mobile pickup stations.",
      "icon": "assets/images/Aggrowave-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
    {
      "name": "Caretaker: A fee-free lease-breaking marketplace leveraging blockchain for subletting.",
      "icon": "assets/images/Caretaker-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
  ];
  List entArr = [
    {
      "name": "Plastics Circle transforming plastic into a economy instead of landfill waste.",
      "icon": "assets/images/Theplasticcircle-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "COLLEGE"
    },
    {
      "name": "Mented Cosmetics: Luxury brand with perfect lip shades for all women.",
      "icon": "assets/images/mentedcosmetics-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
    {
      "name": "Solv Transforming healthcare offering same-day doctor appointments for individuals and children.",
      "icon": "assets/images/Solv-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "COLLEGE"
    },
    {
      "name": "Verge Genomics Artificial Intelligence new drugs for brain diseases like Alzheimers and Parkinsons.",
      "icon": "assets/images/VergeGenomics-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "COLLEGE"
    },
    {
      "name": "Maven Clinic first virtual clinic dedicated to women's and family health. ",
      "icon": "assets/images/MavenClinic-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
    {
      "name": "Modern Fertility affordable hormone tests",
      "icon": "assets/images/modernfertility-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
    {
      "name": "Snorkel is a platform that helps clients build AI applications quickly and easily.",
      "icon": "assets/images/Snorkel-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
    {
      "name": "Werklabs creates predictive analytics solutions to help companies build flexible cultures through data.",
      "icon": "assets/images/weklabs-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
    {
      "name": "Coworker is the equivalent to Airbnb - but for coworking spaces.",
      "icon": "assets/images/Coworker-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
    {
      "name": "Caretaker: A fee-free lease-breaking marketplace leveraging blockchain for subletting.",
      "icon": "assets/images/Caretaker-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
    {
      "name": "Caretaker: A fee-free lease-breaking marketplace leveraging blockchain for subletting.",
      "icon": "assets/images/Caretaker-ezgif.com-webp-to-png-converter-removebg-preview.png",
      "price": "",
      "tag": "ENTERPRISE"
    },
  ];
  

  @override
  Widget build(BuildContext context) {
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
                        title: "College Startups",
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
                        title: "Enterprises",
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
          
                    return CollegeHomeRow(sObj: sObj, onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CollegeDetailPage()),);
                    });
                  },
                ),
              if (!isSubscription)
                ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: entArr.length,
                  itemBuilder: (context, index) {
                    var entObj = entArr[index] as Map<String, dynamic>? ?? {};
          
                    return EnterpriseHomeRow(entObj: entObj, onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const EnterpriseDetailPage()));
                    });
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
