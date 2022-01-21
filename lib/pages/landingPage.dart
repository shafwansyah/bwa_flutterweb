import 'package:bwa_flutterweb/includes/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem(String navLink, int index) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              navLink,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? Color(0xfffe998d)
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      child: Stack(
        children: [
          Image.asset(
            "images/bg.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            child: Column(
              children: [
                // Note : Navigation
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "images/logo.png",
                      width: 72,
                      height: 40,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        navItem("Guides", 0),
                        SizedBox(
                          width: 50,
                        ),
                        navItem("Pricing", 1),
                        SizedBox(
                          width: 50,
                        ),
                        navItem("Teams", 2),
                        SizedBox(
                          width: 50,
                        ),
                        navItem("Stories", 3),
                      ],
                    ),
                    Image.asset(
                      "images/btn.png",
                      width: 163,
                      height: 53,
                    ),
                  ],
                ),

                // Note : Content
                SizedBox(
                  height: 76,
                ),
                Image.asset(
                  "images/ilustration.png",
                  width: 550,
                ),

                // Note : Footer
                SizedBox(
                  height: 84,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/icon_down_solid.png",
                      width: 24,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      "Scroll to learn more",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
