import 'package:diacare360/utils/modalSheets/phone.dart';
import 'package:flutter/material.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

TextEditingController phoneController = TextEditingController();

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            WoltModalSheet.show(
              context: context,
              pageListBuilder:
                  (context) => [phoneNumber(context, phoneController)],
            );
          },
          child: Text('Auth'),
        ),
      ),
    );
  }
}
