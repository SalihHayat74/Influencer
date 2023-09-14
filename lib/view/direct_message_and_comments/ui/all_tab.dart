import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:homescreen/constants/reusable_text.dart';

import '../../../constants/bottom_sheet_listView.dart';
import '../../../constants/custom_listTile.dart';
import '../../home/ui/preview_message_bottom_sheet.dart';

class AllTab extends StatefulWidget {
  const AllTab({Key? key}) : super(key: key);

  @override
  State<AllTab> createState() => _AllTabState();
}

class _AllTabState extends State<AllTab> {
  bool youTube = true;
  bool insta = false;
  bool fb = false;
  bool twitter = false;
  bool linkdn = false;
  bool tiktok = false;
  bool visibility1 = false;
  bool visibility2 = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Preview",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    CustomListTile(
                      value: youTube,
                      title: "You Tube",
                      image: "images/icons/yt.png",
                      onTap: (v) {
                        setState(() {
                          youTube = v!;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomListTile(
                      value: insta,
                      title: "Instagram",
                      image: "images/icons/instagram.png",
                      onTap: (v) {
                        setState(() {
                          insta = v!;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomListTile(
                      value: fb,
                      title: "Facebook",
                      image: "images/icons/facebook.png",
                      onTap: (v) {
                        setState(() {
                          fb = v!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    CustomListTile(
                      value: twitter,
                      title: "Twitter",
                      image: "images/icons/twitter.png",
                      onTap: (v) {
                        setState(() {
                          twitter = v!;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomListTile(
                      value: linkdn,
                      title: "Linkden",
                      image: "images/icons/linkedIn.png",
                      onTap: (v) {
                        setState(() {
                          linkdn = v!;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomListTile(
                      value: tiktok,
                      title: "TikTok",
                      image: "images/icons/tiktok.png",
                      onTap: (v) {
                        setState(() {
                          tiktok = v!;
                        });
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 40),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ReusableText(
                  title: 'Preview Messages',
                  size: 15,
                  weight: FontWeight.w500,
                ),
                InkWell(
                  onDoubleTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      builder: (BuildContext context) {
                        return PreviewMessageBottomSheet(title: 'Full Preview message',);
                      },
                    );
                  },
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      builder: (BuildContext context) {
                        return PreviewMessageBottomSheet(title: 'Preview message',);
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Image.asset(
                            'images/assets/bottomsheetimage1.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        const ReusableText(
                          title: 'BeerBiceps',
                          size: 16,
                          weight: FontWeight.w700,
                        ),
                        const Spacer(),
                        Image.asset('images/icons/yt.png'),
                        const SizedBox(
                          width: 05,
                        ),
                        const ReusableText(
                          title: 'Youtube',
                          size: 13,
                          weight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
                ),
                
                const SizedBox(
                  height: 10,
                ),
                Divider(indent: 10,endIndent: 10,thickness: 2,),
                BottomSheetPreviewAllListView(),
                const SizedBox(
                  height: 30,
                ),

              ],
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onDoubleTap: (){
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                builder: (BuildContext context) {
                  return PreviewMessageBottomSheet(title: 'Full Preview message',);
                },
              );
            },
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                builder: (BuildContext context) {
                  return PreviewMessageBottomSheet(title: 'Preview Message',previewAll: true,);
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xFF3498DB),
                  ),
                  color: const Color(0xFFEDF4FF),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x703498DB),
                      blurRadius: 10,
                    ),
                  ]),
              child: const Text(
                "Preview All",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                builder: (BuildContext context) {
                  return PreviewMessageBottomSheet(title:'Preview Message');
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF3498DB),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x703498DB),
                      blurRadius: 10,
                    ),
                  ]),
              child: const Text(
                "Preview Message",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                builder: (BuildContext context) {
                  return PreviewMessageBottomSheet(title: 'Full Preview message',);
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xFF3498DB),
                  ),
                  color: const Color(0xFFEDF4FF),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x703498DB),
                      blurRadius: 10,
                    ),
                  ]),
              child: const Text(
                "Preview Comment",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
