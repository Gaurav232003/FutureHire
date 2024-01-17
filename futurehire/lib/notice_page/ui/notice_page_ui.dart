import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futurehire/notice_page/data/notification_data.dart';


class NoticePage extends StatefulWidget {
  const NoticePage({super.key});

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 249, 247, 0.85),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25.h),
              child: Center(
                child: Container(
                    child: Text(
                  "Notification",
                  style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "poppins"),
                )),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: notification.length,
                  itemBuilder: (context, index) {
                    final notice = notification[index];
                    return Padding(
                      padding: EdgeInsets.only(left: 25.w,top: 25.h,right: 25.w),
                      child: Container(
                        width: 326.w,
                        height: 70.h,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(171, 201, 197, 1),
                          borderRadius: BorderRadius.circular(36),
                        ),
                        child: Row(
                          children: [
                          Container(

                          width: 80.w,
                          height: 90.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.w),

                              ),
                          child:
                          Image(width: 30.w, height: 30.h, image: AssetImage('assets/${notice.avatar}'),
                          fit: BoxFit.cover,),
                        ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    notice.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Inter",
                                        fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.w,right: 8.w,bottom: 4.h),
                                    child: Container(
                                      height: 32.h,
                                      width: 210.w,
                                      child: Text(notice.description,
                                          maxLines: 2,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontFamily: "poppins",
                                            fontSize: 10),
                                        ),
                                    ),
                                  ),

                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
