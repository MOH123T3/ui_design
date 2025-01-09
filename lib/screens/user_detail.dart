import 'package:demo/constants/app_colors.dart';
import 'package:demo/constants/app_icons.dart';
import 'package:demo/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDetailScreen extends StatefulWidget {
  const UserDetailScreen({super.key});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  //Todo for changing button border and icon color
  bool buttonOneOnTap = false;
  bool buttonTwoOnTap = false;
  bool buttonThreeOnTap = false;
  bool buttonFourOnTap = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 400,
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
              color: AppColors.dark,
              boxShadow: [BoxShadow(blurRadius: 30, spreadRadius: 25)]),
          child: Column(
            children: [
              SizedBox(height: 5),
              SizedBox(
                width: 200,
                child: Text(
                  'What is your favorite time of the day?',
                  style: AppTextStyles.subheading,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                '“Mine is definitely the peace in the morning.”',
                style: GoogleFonts.notoSansPsalterPahlavi(
                  textStyle: TextStyle(
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                    height: 14.4 / 12, // Line height as a ratio of font size
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.black,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationThickness: 1.0,
                  ),
                ),
              )),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: GridView(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  children: [
                    InkWell(
                      child: items(
                        FontAwesomeIcons.a,
                        "The peace in the early mornings",
                        buttonOneOnTap,
                      ),
                      onTap: () {
                        setState(() {
                          buttonOneOnTap = !buttonOneOnTap;
                        });
                      },
                    ),
                    InkWell(
                      child: items(FontAwesomeIcons.b,
                          "The magical golden hours", buttonTwoOnTap),
                      onTap: () {
                        setState(() {
                          buttonTwoOnTap = !buttonTwoOnTap;
                        });
                      },
                    ),
                    InkWell(
                      child: items(FontAwesomeIcons.c,
                          "Wind-down time after dinners", buttonThreeOnTap),
                      onTap: () {
                        setState(() {
                          buttonThreeOnTap = !buttonThreeOnTap;
                        });
                      },
                    ),
                    InkWell(
                      child: items(FontAwesomeIcons.d,
                          "The serenity past midnight", buttonFourOnTap),
                      onTap: () {
                        setState(() {
                          buttonFourOnTap = !buttonFourOnTap;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Pick your option. \nSee who has a similar mind."),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      child: SvgPicture.asset(AppIcons.pollIconFirst),
                      onTap: () {},
                    ),
                    InkWell(
                      child: SvgPicture.asset(AppIcons.pollIconSec),
                      onTap: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

//Todo Items button
  items(IconData f, String t, pressAttention) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.backGroundColor,
          border: Border.all(
              width: 2,
              color: pressAttention == true
                  ? AppColors.buttons
                  : AppColors.backGroundColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: pressAttention == true
                    ? AppColors.buttons
                    : AppColors.backGroundColor,
                border: Border.all(
                    color: pressAttention == true
                        ? AppColors.buttons
                        : AppColors.light,
                    width: 1)),
            child: FaIcon(
              f,
              size: 10,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
              width: 110,
              child: Text(
                t,
                style: AppTextStyles.button,
              ))
        ],
      ),
    );
  }
}
