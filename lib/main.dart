import 'package:diacare360/navigation.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

void main() {
  runApp(DiaCare360());
}

class DiaCare360 extends StatelessWidget {
  const DiaCare360({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadcnApp(
      debugShowCheckedModeBanner: false,
      title: 'DiaCare 360',
      theme: ThemeData(colorScheme: ColorSchemes.darkNeutral(), radius: 0.5),
      home: Navigation(),
    );
  }
}
