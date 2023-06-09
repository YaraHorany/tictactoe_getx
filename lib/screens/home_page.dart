import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoe_getx/constants/colors.dart';
import 'package:tictactoe_getx/controllers/tictactoe_controller.dart';
import 'package:tictactoe_getx/widgets/Cell.dart';

class HomePage extends StatelessWidget {
  TicTacToeController controller = Get.put(TicTacToeController());

  static var customFontWhite = GoogleFonts.coiny(
    textStyle: const TextStyle(
      color: Colors.white,
      letterSpacing: 3,
      fontSize: 28,
    ),
  );
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Player X', style: customFontWhite),
                              Text(controller.ticTacToe.value.xScore.toString(),
                                  style: customFontWhite),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Player O', style: customFontWhite),
                              Text(controller.ticTacToe.value.oScore.toString(),
                                  style: customFontWhite),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 5,
              child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return Cell(controller: controller, index: index);
                  }),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Obx(
                  () => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        controller.ticTacToe.value.resultDeclaration,
                        style: customFontWhite,
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MainColor.secondaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                        ),
                        onPressed: () {
                          controller.clearBoard();
                          controller.updateAttempt();
                        },
                        child: Text(
                          controller.ticTacToe.value.attempts == 0
                              ? "Start"
                              : "Play Again!",
                          style: customFontWhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
