import 'package:flutter/material.dart';
import '../model/kategori.dart';
import '../theme.dart';

class KategoriCard extends StatelessWidget {
  final Kategori kat;

  KategoriCard(this.kat);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      width: 50,
      color: Color(0xffFAFAFA),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(13),
                  child: Image.asset(
                    kat.imageUrl,
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              kat.isActive
                  ? Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                            )),
                        child: Center(
                          child: Image.asset(
                            'assets/red.png',
                            width: 10,
                            height: 10,
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            kat.name,
            style: blackTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
