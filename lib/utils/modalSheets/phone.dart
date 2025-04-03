import 'package:diacare360/utils/input&buttons/button.dart';
import 'package:diacare360/utils/input&buttons/input.dart';
import 'package:diacare360/utils/text/gradient.dart';
import 'package:flutter/cupertino.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

WoltModalSheetPage phoneNumber(
  BuildContext context,
  TextEditingController phoneController,
) {
  return WoltModalSheetPage(
    child: SizedBox(),
    heroImageHeight: 220,
    heroImage: Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          const Row(
            children: [
              Text(
                'Hola amigo!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 5),
              GradientText(),
            ],
          ),
          Input(
            controller: phoneController,
            prefix: true,
            label: 'Phone Number',
            hint: 'Phone Number',
          ),
          CustomButton(
            label: 'GET IN',
            width: 65,
            height: 28,
            onPressed: () {},
          ),
        ],
      ),
    ),
  );
}
