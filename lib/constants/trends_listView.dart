import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';

class TrendsListViewSubject {
  String iconImage;
  String mainImage;
  String followers;
  String share;
  String views;
  String title;
  TrendsListViewSubject(
      {required this.share,
      required this.title,
      required this.followers,
      required this.iconImage,
      required this.mainImage,
      required this.views});
}

class TrendsListView extends StatefulWidget {
  TrendsListView({Key? key}) : super(key: key);

  @override
  State<TrendsListView> createState() => _TrendsListViewState();
}

class _TrendsListViewState extends State<TrendsListView> {
  final List<TrendsListViewSubject> trendList = [
    TrendsListViewSubject(
        title: 'The Last of Us Part II - Release\nDate Reveal Trailer | PS4',
        share: '2M',
        followers: '4.3M',
        iconImage: 'images/icons/yt.png',
        mainImage: 'images/assets/image5.png',
        views: '223M'),
    TrendsListViewSubject(
        title: 'How To Make Bitcoin Mining\nMachine | Creative Ideas',
        share: '1M',
        followers: '6.3M',
        iconImage: 'images/icons/instagram1.png',
        mainImage: 'images/assets/image6.png',
        views: '213M'),
    TrendsListViewSubject(
        title: 'How To Make Bitcoin Mining\nMachine | Creative Ideas',
        share: '1M',
        followers: '6.3M',
        iconImage: 'images/icons/facebook1.png',
        mainImage: 'images/assets/image6.png',
        views: '213M'),
  ];

  int _currentIndex1 = 0;
  bool isAcceptYT2=false;
  bool isAcceptYT1=false;
  bool isAcceptYT=false;
  bool isAcceptFb=false;
  bool isAcceptInsta=false;
  bool isRejectYT=false;
  bool isRejectFb=false;
  bool isRejectInsta=false;
  bool isSeeMoreYT=false;
  bool isSeeMoreFb=false;
  bool isSeeMoreInsta=false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: trendList.length,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: const Color(0xffFFFFFF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 3, top: 16, bottom: 12, right: 5),
                    child: Column(
                      children: [
                        const Text(
                          "Platform",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Image(image: AssetImage(trendList[index].iconImage)),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          trendList[index].followers,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.black),
                        ),
                        const Text(
                          "Followers",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xff7A7D98)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                            width: 70,
                            child: Divider(
                              thickness: 2,
                              height: 2,
                              color: Color(0xffD9D9D9),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          trendList[index].views,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.black),
                        ),
                        const Text(
                          "Views",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xff7A7D98)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                            width: 70,
                            child: Divider(
                              thickness: 2,
                              height: 2,
                              color: Color(0xffD9D9D9),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          trendList[index].share,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.black),
                        ),
                        const Text(
                          "Share",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xff7A7D98)),
                        ),
                      ],
                    ),
                  ),
                  const DottedDashedLine(
                    width: 2,
                    axis: Axis.vertical,
                    height: 235,
                    dashHeight: 10,
                    dashColor: Color(0xff979AB4),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  trendList[index].title,
                                  style: const TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: const [
                                    Image(
                                        image: AssetImage(
                                            "images/icons/cercularIcon.png")),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Nunc condimentu dum",
                                      style: TextStyle(
                                          color: Color(0xff8E91AD),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const[
                                    Image(
                                        image: AssetImage(
                                            "images/icons/cercularIcon.png")),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Maecenas ut pretium que.",
                                      style: TextStyle(
                                          color: Color(0xff8E91AD),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const[
                                    Image(
                                        image: AssetImage(
                                            "images/icons/cercularIcon.png")),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Nam tincidunt sapien luctus. ",
                                      style: TextStyle(
                                          color: Color(0xff8E91AD),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: const[
                                    Image(
                                        image: AssetImage(
                                            "images/icons/cercularIcon.png")),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Sed accumsan enim q scipit.",
                                      style: TextStyle(
                                          color: Color(0xff8E91AD),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const[
                                    Image(
                                        image: AssetImage(
                                            "images/icons/cercularIcon.png")),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Morbi ac ante arcu.",
                                      style: TextStyle(
                                          color: Color(0xff8E91AD),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 83,
                                  width: 97,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            trendList[index].mainImage),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Goals:",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xffE74C3C),
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: const[
                                    Image(
                                        image: AssetImage(
                                      "images/icons/cercularIcon2.png",
                                    )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "+10k Followers",
                                      style: TextStyle(
                                          color: Color(0xff70738E),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const[
                                    Image(
                                        image: AssetImage(
                                            "images/icons/cercularIcon2.png")),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "\$120",
                                      style: TextStyle(
                                          color: Color(0xff70738E),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const[
                                    Image(
                                        image: AssetImage(
                                            "images/icons/cercularIcon2.png")),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Management",
                                      style: TextStyle(
                                          color: Color(0xff70738E),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {

                              },
                              child: Container(
                                key:Key("$index"),
                                height: 26,
                                width: 77,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0xff1C73FF)
                                            .withOpacity(0.5),
                                        spreadRadius: -2,
                                        blurRadius: 4,
                                        offset: const Offset(0,
                                            5), // changes position of shadow
                                      )

                                      // isAcceptYT && index==0
                                      //     ? BoxShadow(
                                      //         color: const Color(0xff1C73FF)
                                      //             .withOpacity(0.5),
                                      //         spreadRadius: -2,
                                      //         blurRadius: 4,
                                      //         offset: const Offset(0,
                                      //             5), // changes position of shadow
                                      //       )
                                      //     :isAcceptInsta && index==0?BoxShadow(
                                      //   color: const Color(0xff1C73FF)
                                      //       .withOpacity(0.5),
                                      //   spreadRadius: -2,
                                      //   blurRadius: 4,
                                      //   offset: const Offset(0,
                                      //       5), // changes position of shadow
                                      // ):
                                      // isAcceptFb  && index==0?BoxShadow(
                                      //   color: const Color(0xff1C73FF)
                                      //       .withOpacity(0.5),
                                      //   spreadRadius: -2,
                                      //   blurRadius: 4,
                                      //   offset: const Offset(0,
                                      //       5), // changes position of shadow
                                      // ):
                                      // BoxShadow(
                                      //         color: const Color(0xff1C73FF)
                                      //             .withOpacity(0.5),
                                      //         spreadRadius: 0,
                                      //         blurRadius: 0,
                                      //         offset: const Offset(0,
                                      //             0), // changes position of shadow
                                      //       ),
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    color: const Color(0xff1C73FF),
                                    // isAcceptYT
                                    //     ? const Color(0xff1C73FF):
                                    //     isAcceptInsta?const Color(0xff1C73FF):
                                    //         isAcceptFb?const Color(0xff1C73FF)
                                    //     : const Color(0xffEDF4FF),
                                    border: Border.all(
                                      color: isAcceptYT
                                          ? Colors.transparent
                                          : const Color(0xff1C73FF),
                                    )),
                                child: const Center(
                                  child: Text(
                                    "Accept",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11,
                                        color:
                                        Color(0xffFFFFFF)
                                        // isAcceptYT
                                        //     ? const Color(0xffFFFFFF)
                                        //     : const Color(0xff000000)),
                                  ),
                                ),
                              ),
                            )
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () {

                              },
                              child: Container(
                                height: 26,
                                width: 77,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0xff1C73FF)
                                            .withOpacity(0.5),
                                        spreadRadius: -2,
                                        blurRadius: 4,
                                        offset: const Offset(0,
                                            5), // changes position of shadow
                                      )
                                      // isRejectYT
                                      //     ? BoxShadow(
                                      //         color: const Color(0xff1C73FF)
                                      //             .withOpacity(0.5),
                                      //         spreadRadius: -2,
                                      //         blurRadius: 4,
                                      //         offset: const Offset(0,
                                      //             5), // changes position of shadow
                                      //       ):
                                      //     isRejectInsta?BoxShadow(
                                      //       color: const Color(0xff1C73FF)
                                      //           .withOpacity(0.5),
                                      //       spreadRadius: -2,
                                      //       blurRadius: 4,
                                      //       offset: const Offset(0,
                                      //           5), // changes position of shadow
                                      //     ):
                                      //     isRejectFb?BoxShadow(
                                      //       color: const Color(0xff1C73FF)
                                      //           .withOpacity(0.5),
                                      //       spreadRadius: -2,
                                      //       blurRadius: 4,
                                      //       offset: const Offset(0,
                                      //           5), // changes position of shadow
                                      //     )
                                      //     : BoxShadow(
                                      //         color: const Color(0xff1C73FF)
                                      //             .withOpacity(0.5),
                                      //         spreadRadius: 0,
                                      //         blurRadius: 0,
                                      //         offset: const Offset(0,
                                      //             0), // changes position of shadow
                                      //       ),
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    color: const Color(0xff1C73FF),
                                    // color: isRejectYT
                                    //     ? const Color(0xff1C73FF):
                                    // isRejectInsta
                                    //     ? const Color(0xff1C73FF):
                                    // isRejectFb
                                    //     ? const Color(0xff1C73FF)
                                    //     : const Color(0xffEDF4FF),
                                    border: Border.all(
                                      color: const Color(0xff1C73FF)
                                      // color: isRejectYT
                                      //     ? Colors.transparent:
                                      // isRejectInsta
                                      //     ? Colors.transparent:
                                      // isRejectFb
                                      //     ? Colors.transparent
                                      //     : const Color(0xff1C73FF),
                                    )),
                                child: const Center(
                                  child: Text(
                                    "Reject",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11,
                                        color: Color(0xffFFFFFF)
                                        // color: isRejectYT
                                        //     ? const Color(0xffFFFFFF):
                                        // isRejectInsta
                                        //     ? const Color(0xffFFFFFF):
                                        // isRejectFb
                                        //     ? const Color(0xffFFFFFF)
                                        //     : const Color(0xff000000)),
                                  ),
                                ),
                              ),
                            )),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(

                              onTap: () {

                              },
                              child: Container(
                                height: 26,
                                width: 77,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0xff1C73FF)
                                            .withOpacity(0.5),
                                        spreadRadius: -2,
                                        blurRadius: 4,
                                        offset: const Offset(0,
                                            5), // changes position of shadow
                                      )

                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    color: const Color(0xff1C73FF),
                                    border: Border.all(
                                      color:Colors.transparent
                                    )),
                                child: const Center(
                                  child: Text(
                                    "See More",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11,
                                        color:
                                        Color(0xffFFFFFF),
                                        // isSeeMoreYT
                                        //     ? const Color(0xffFFFFFF):
                                        // isSeeMoreInsta
                                        //     ? const Color(0xffFFFFFF):
                                        // isSeeMoreFb
                                        //     ? const Color(0xffFFFFFF)
                                        //     : const Color(0xff000000)),
                                  ),
                                ),
                              ),
                            ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}


