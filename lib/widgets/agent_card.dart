import 'package:flutter/material.dart';
import '../model/agent.dart';
import '../theme.dart';

class AgentCard extends StatelessWidget {
  final Agent kat;

  AgentCard(this.kat);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: edge),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 120,
          width: 90,
          color: Color(0xFFFFFFFF),
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(13),
                      child: Image.asset(
                        kat.imageUrl,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                kat.name,
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              Text(
                kat.sold,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
