import 'package:flutter/material.dart';
import '../model/staff.dart';
import '../theme.dart';

class StaffCard extends StatelessWidget {
  final Staff kat;

  StaffCard(this.kat);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: edge),
      child: Container(
        height: 181,
        width: 200,
        color: Color(0xffFAFAFA),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 100,
                  width: 180,
                  color: Color(0xFFFFFFFF),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(13),
                    child: Image.asset(
                      kat.imageUrl,
                      width: 180,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                kat.isActive
                    ? Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 30,
                            height: 16,
                            decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                                child: Text(
                              'NEW',
                              style: lightTextStyle.copyWith(fontSize: 8),
                            )),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        kat.name,
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        kat.feat,
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    kat.price,
                    style: lightTextStyle.copyWith(
                      fontSize: 14,
                    ),
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
