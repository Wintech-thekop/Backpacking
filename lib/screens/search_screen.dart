import 'package:backpacking/utility/app_layout.dart';
import 'package:backpacking/utility/app_styles.dart';
import 'package:backpacking/widgets/double_text_widget.dart';
import 'package:backpacking/widgets/icon_text_widget.dart';
import 'package:backpacking/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?",
              style: Styles.headLineStyle1.copyWith(fontSize: 35)),
          Gap(AppLayout.getHeight(20)),
          // FittedBox(
          //   child: Container(
          //     padding: const EdgeInsets.all(3.5),
          //     child: Row(
          //       children: [
          //         /* Airline Ticket */
          //         Container(
          //           width: size.width * 0.44,
          //           padding: EdgeInsets.symmetric(vertical: 7),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.horizontal(
          //               left: Radius.circular(50),
          //             ),
          //             color: Colors.white,
          //           ),
          //           child: Center(
          //             child: Text("Airline tickets"),
          //           ),
          //         ),

          //         /* Hogtel Ticket */
          //         Container(
          //           width: size.width * 0.44,
          //           padding: EdgeInsets.symmetric(vertical: 7),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.horizontal(
          //               right: Radius.circular(50),
          //             ),
          //             color: Colors.transparent,
          //           ),
          //           child: Center(
          //             child: Text("Hotels"),
          //           ),
          //         ),
          //       ],
          //     ),
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(
          //         AppLayout.getHeight(50),
          //       ),
          //       color: const Color(0xFFF4F6FD),
          //     ),
          //   ),
          // ),

          const TicketTabs(firstTab: "Airline tickets", secondTab: "Hotels"),
          Gap(AppLayout.getHeight(25)),
          const IconTextWidget(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          const IconTextWidget(
              icon: Icons.flight_land_outlined, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xD91130CE),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(15),
                vertical: AppLayout.getHeight(18)),
            child: Center(
                child: Text("find tickets",
                    style: Styles.textStyle.copyWith(color: Colors.white))),
          ),
          Gap(AppLayout.getHeight(40)),
          const DoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 425,
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg"),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                        "20% discount on the early booking of this flight. Don't miss out this change",
                        style: Styles.headLineStyle2),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                          color: const Color(0xFF2CD3D1),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -40,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 18, color: const Color(0xFF189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEC743C),
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                          text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "????",
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text: "????",
                              style: TextStyle(fontSize: 45),
                            ),
                            TextSpan(
                              text: "????",
                              style: TextStyle(fontSize: 18),
                            ),
                          ]
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
