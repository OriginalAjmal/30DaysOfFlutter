// ignore_for_file: unnecessary_null_comparison, deprecated_member_use

import "package:flutter/material.dart";
import 'package:test_app/models/catalog.dart';
import 'package:test_app/widgets/themes.dart';
import "package:velocity_x/velocity_x.dart";

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(context.theme.buttonColor),
                  shape: MaterialStateProperty.all(
                    // ignore: prefer_const_constructors
                    StadiumBorder(),
                  )),
              child: "Add To Cart".text.make(),
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(context.accentColor)
                          .bold
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      10.heightBox,
                      "Elitr labore sanctus ea erat erat, gubergren takimata sanctus dolor ea et et. Duo sed at ea sed aliquyam amet labore sea ut. Kasd eos clita sea stet sed eirmod ipsum et tempor. Stet rebum gubergren elitr sea et amet nonumy. Sed accusam sit sea et ut clita. Gubergren dolor justo diam tempor, lorem dolor ea labore takimata lorem dolor. Ipsum ipsum at stet dolore lorem. Diam tempor erat kasd."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p16()
                    ],
                  ).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
