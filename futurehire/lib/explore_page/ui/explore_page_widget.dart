import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../detail_view_page/ui/internship_detail_page.dart';

// Main carousel widget
Widget carouselSliders(BuildContext context) {
  return Center(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      width: 264.w,
      height: 264.h,
      child: CarouselSlider(
        items: [
          _sliderContainer(
            context,
            title: "INTERNSHIP",
            subTitle: "Get Yourself the Dream Job you deserve on a few clicks",
            onTap: () => _navigateToDetailPage(context, 1),
            backgroundColor: const Color.fromRGBO(170, 201, 175, 100),
          ),
          _sliderContainer(
            context,
            title: "GIGS",
            subTitle: "Get Yourself the Dream Job you deserve on a few clicks",
            onTap: () => _navigateToDetailPage(context, 2),
            backgroundColor: const Color.fromRGBO(58, 57, 57, 100),
          ),
          _sliderContainer(
            context,
            title: "JOB",
            subTitle: "Get Yourself the Dream Job you deserve on a few clicks",
            onTap: () {},
            backgroundColor: const Color.fromRGBO(49, 126, 138, 100),
          ),
        ],
        options: CarouselOptions(
          height: 352.h,
          initialPage: 1,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          enableInfiniteScroll: false,
        ),
      ),
    ),
  );
}

// Slider container widget
Widget _sliderContainer(BuildContext context,
    {required String title,
    required String subTitle,
    required VoidCallback onTap,
    required Color backgroundColor}) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
        width: 216.w,
        height: 200.h,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.h),
              width: 155.w,
              child: const Divider(thickness: 0.5, color: Color(0xFFF5F5F5)),
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 18.sp,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: onTap,
        child: Container(
          width: 216.w,
          height: 53.h,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          child: Center(
            child: Text(
              "Apply",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

// Navigation function
void _navigateToDetailPage(BuildContext context, int detailId) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailViewPage(detailId)),
  );
}

// Background image widget
Widget backImage(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 160.h,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/background-complete.png'),
        fit: BoxFit.fill,
      ),
    ),
    child: Stack(
      children: [
        ..._buildLayeredImages([
          'assets/Route.png',
          'assets/Character.png',
          'assets/rocks.png',
          'assets/Plants.png',
          'assets/Group 88.png',
        ]),
      ],
    ),
  );
}

// Helper function to build layered images
List<Widget> _buildLayeredImages(List<String> imagePaths) {
  return imagePaths.map((path) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(path),
        ),
      ),
    );
  }).toList();
}
