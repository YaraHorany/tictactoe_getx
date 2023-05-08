import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoe_getx/constants/colors.dart';
import 'package:tictactoe_getx/controllers/tictactoe_controller.dart';

class Cell extends StatelessWidget {
  final TicTacToeController controller;
  final int index;

  const Cell({Key? key, required this.controller, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          controller.tapped(index);
        },
        child: Obx(
          () => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 5,
                color: MainColor.primaryColor,
              ),
              color: controller.ticTacToe.value.matchedIndexes.contains(index)
                  ? MainColor.accentColor
                  : MainColor.secondaryColor,
            ),
            child: Center(
              child: Text(
                controller.ticTacToe.value.displayXO[index],
                style: GoogleFonts.coiny(
                  textStyle:
                      TextStyle(fontSize: 64, color: MainColor.primaryColor),
                ),
              ),
            ),
          ),
        ));
  }
}
