import 'dart:ui';
import 'app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle{

static TextStyle semi20Black =GoogleFonts.inter(
  fontSize: 20,
  fontWeight: FontWeight.w700,
  color: AppColor.blackColor
);
static TextStyle semi20Primary = GoogleFonts.inter(

 fontSize: 20,
 fontWeight: FontWeight.w700,
 color: AppColor.primaryLight,
);
static TextStyle bold20Primary = GoogleFonts.inter(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: AppColor.primaryLight,

);
static TextStyle bold12White = GoogleFonts.inter(
fontSize: 12,
fontWeight: FontWeight.bold,
color: AppColor.whiteColor,
);

static TextStyle bold24White = GoogleFonts.inter(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: AppColor.whiteColor,
);

static TextStyle bold14Primary = GoogleFonts.inter(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: AppColor.primaryLight,
);

static TextStyle bold16Primary = GoogleFonts.inter(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: AppColor.primaryLight,
);

static TextStyle bold16White = GoogleFonts.inter(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: AppColor.whiteColor,
);

static TextStyle bold20Black= GoogleFonts.inter(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: AppColor.blackColor,
);

}