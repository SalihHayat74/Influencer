




import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/bottom_sheet_listView.dart';
import '../../../constants/reusable_text.dart';

class PreviewMessageBottomSheet extends StatefulWidget {
  String  title;
  bool?  previewAll;
  PreviewMessageBottomSheet({this.previewAll=false,required this.title,Key? key}) : super(key: key);

  @override
  State<PreviewMessageBottomSheet> createState() => _PreviewMessageBottomSheetState();
}

class _PreviewMessageBottomSheetState extends State<PreviewMessageBottomSheet> {
  bool visibleGeneral=false;
  bool  visiblegrabStar=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: widget.previewAll==true?Get.height*.7:Get.height*.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReusableText(
            title: widget.title,
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
          Row(
            children: [
              SizedBox(
                  height: 30, width: Get.width*.72, child: TextField()),
              Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                      ),
                      color: Color(0xff74AA9C)),
                  child: const Image(
                    image: AssetImage('images/icons/chatGpt.png'),
                  )),
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                    ),
                    color: Colors.white),
                child: const Icon(
                  Icons.close,
                  size: 15,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const ReusableText(
            color: Color(0xff8E91AD),
            size: 13,
            weight: FontWeight.w500,
            title:
            'Ut blandit odio vitae dictum sodales. Nunc\nat suscipit risus. Nunc convallis quis imper\ndietante arcu ',
          ),
          widget.title=="Full Preview message"?SizedBox(
            height: Get.height*.2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ReusableText(
                        title: 'General (3)',
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              visibleGeneral = !visibleGeneral;

                            });
                          },
                          child: visibleGeneral
                              ? const Icon(
                            Icons.keyboard_arrow_up,
                            size: 30,
                          )
                              : const Icon(
                            Icons.keyboard_arrow_down,
                            size: 30,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Visibility(
                      visible: visibleGeneral,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10),
                              alignment: Alignment.topLeft,
                              height: 39,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.withOpacity(0.1),
                                  border: Border.all(
                                      color:
                                      Colors.grey.withOpacity(0.3))),
                              child: const ReusableText(
                                title: '# Design',
                                size: 13,
                                weight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10),
                              alignment: Alignment.topLeft,
                              height: 39,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.withOpacity(0.1),
                                  border: Border.all(
                                      color:
                                      Colors.grey.withOpacity(0.3))),
                              child: const ReusableText(
                                title: '# business team',
                                size: 13,
                                weight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10),
                              alignment: Alignment.topLeft,
                              height: 39,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.withOpacity(0.1),
                                  border: Border.all(
                                      color:
                                      Colors.grey.withOpacity(0.3))),
                              child: const ReusableText(
                                title: '# analytics',
                                size: 13,
                                weight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ReusableText(
                        title: 'grabstar (3)',
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              visiblegrabStar = !visiblegrabStar;
                            });
                          },
                          child: visiblegrabStar
                              ? const Icon(
                            Icons.keyboard_arrow_up,
                            size: 30,
                          )
                              : const Icon(
                            Icons.keyboard_arrow_down,
                            size: 30,
                          )),
                    ],
                  ),
                  Visibility(
                      visible: visiblegrabStar,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10),
                              alignment: Alignment.topLeft,
                              height: 39,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.withOpacity(0.1),
                                  border: Border.all(
                                      color:
                                      Colors.grey.withOpacity(0.3))),
                              child: const ReusableText(
                                title: '# Design',
                                size: 13,
                                weight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10),
                              alignment: Alignment.topLeft,
                              height: 39,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.withOpacity(0.1),
                                  border: Border.all(
                                      color:
                                      Colors.grey.withOpacity(0.3))),
                              child: const ReusableText(
                                title: '# business team',
                                size: 13,
                                weight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10),
                              alignment: Alignment.topLeft,
                              height: 39,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.withOpacity(0.1),
                                  border: Border.all(
                                      color:
                                      Colors.grey.withOpacity(0.3))),
                              child: const ReusableText(
                                title: '# analytics',
                                size: 13,
                                weight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
          ):
          SizedBox(),
          widget.previewAll==true?const BottomSheetPreviewAllListView():
          SizedBox(),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: 26,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x703498DB),
                        blurRadius: 15,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xff1C73FF),
                  ),
                  child: const ReusableText(
                    title: 'Respond',
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: 26,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x703498DB)
                            .withOpacity(0.2),
                        blurRadius: 15,
                      ),
                    ],
                    border: Border.all(
                        color: const Color(0xff1C73FF)),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: const ReusableText(
                      title: 'Skip', color: Colors.black),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
