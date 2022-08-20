import 'package:backpacking/utility/app_layout.dart';
import 'package:backpacking/utility/app_styles.dart';
import 'package:backpacking/widgets/column_layout.dart';
import 'package:backpacking/widgets/layout_builder_widget.dart';
import 'package:backpacking/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/utils.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      // width: MediaQuery.of(context).size.width,
      width: size.width * 0.8,
      // height: 200,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 162 : 164),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /* Show the blue part of card/ticket */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xff526799) : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),

                      // const Spacer(),
                      Expanded(child: Container()),
                      const ThickContainer(
                        isColor: true,
                      ),

                      // const Spacer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              // child: LayoutBuilder(
                              //   builder: (BuildContext context,
                              //       BoxConstraints constraints) {
                              //     return Flex(
                              //       direction: Axis.horizontal,
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceBetween,
                              //       mainAxisSize: MainAxisSize.max,
                              //       children: List.generate(
                              //         (constraints.constrainWidth() / 6)
                              //             .floor(),
                              //         (index) => SizedBox(
                              //           width: 3,
                              //           height: 1,
                              //           child: DecoratedBox(
                              //             decoration: BoxDecoration(
                              //                 color: isColor == null
                              //                     ? Colors.white
                              //                     : Color(0xFF8ACCF7)),
                              //           ),
                              //         ),
                              //       ),
                              //     );
                              //   },
                              // ),
                              child: LayoutBuilderWidget(section: 6,isColor: false, width: 5),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_sharp,
                                    color: isColor == null
                                        ? Colors.white
                                        : const Color(0xFF8ACCF7)),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const ThickContainer(
                        isColor: true,
                      ),

                      // const Spacer(),
                      Expanded(child: Container()),

                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['name'],
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            /* Show the orange part of card/ticket */
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: isColor == null
                                        ? Colors.white
                                        : Colors.grey.shade300,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /* Show the blue part of card/ticket */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 20 : 0),
                  bottomRight: Radius.circular(isColor == null ? 20 : 0),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 10, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        firstText: ticket['date'],
                        secondText: "Date",
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       ticket['date'],
                      //       style: isColor == null
                      //           ? Styles.headLineStyle3
                      //               .copyWith(color: Colors.white)
                      //           : Styles.headLineStyle3,
                      //     ),
                      //     const Gap(5),
                      //     Text(
                      //       "Date",
                      //       style: isColor == null
                      //           ? Styles.headLineStyle4
                      //               .copyWith(color: Colors.white)
                      //           : Styles.headLineStyle4,
                      //     ),
                      //   ],
                      // ),

                      ColumnLayout(
                        firstText: ticket['departure_time'],
                        secondText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),

                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       ticket['departure_time'],
                      //       style: isColor == null
                      //           ? Styles.headLineStyle3
                      //               .copyWith(color: Colors.white)
                      //           : Styles.headLineStyle3,
                      //     ),
                      //     const Gap(5),
                      //     Text(
                      //       "Departure time",
                      //       style: isColor == null
                      //           ? Styles.headLineStyle4
                      //               .copyWith(color: Colors.white)
                      //           : Styles.headLineStyle4,
                      //     ),
                      //   ],
                      // ),

                      ColumnLayout(
                        firstText: ticket['number'].toString(),
                        secondText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),

                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     Text(
                      //       ticket['number'].toString(),
                      //       style: isColor == null
                      //           ? Styles.headLineStyle3
                      //               .copyWith(color: Colors.white)
                      //           : Styles.headLineStyle3,
                      //     ),
                      //     const Gap(5),
                      //     Text(
                      //       "Number",
                      //       style: isColor == null
                      //           ? Styles.headLineStyle4
                      //               .copyWith(color: Colors.white)
                      //           : Styles.headLineStyle4,
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
