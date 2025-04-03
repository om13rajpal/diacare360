import 'package:shadcn_flutter/shadcn_flutter.dart';

class Prescriptions extends StatelessWidget {
  const Prescriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Accordion(
      items: [
        AccordionItem(
          trigger: AccordionTrigger(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dr. Om Rajpal', style: TextStyle(fontSize: 13)),
                Text(
                  '12 January 2025',
                  style: TextStyle(fontSize: 12, color: Color(0xFF6F6F6F)),
                ),
              ],
            ),
          ),
          content: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
            'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
            'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
            'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: TextStyle(fontSize: 12),
          ),
        ),
        AccordionItem(
          trigger: AccordionTrigger(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dr. Jasvin Taneja', style: TextStyle(fontSize: 13)),
                Text(
                  '22 March 2025',
                  style: TextStyle(fontSize: 12, color: Color(0xFF6F6F6F)),
                ),
              ],
            ),
          ),
          content: Text(
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
            'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
            'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
            'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: TextStyle(fontSize: 12),
          ),
        ),
        AccordionItem(
          trigger: AccordionTrigger(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dr. Ponky', style: TextStyle(fontSize: 13)),
                Text(
                  '13 August 2024',
                  style: TextStyle(fontSize: 12, color: Color(0xFF6F6F6F)),
                ),
              ],
            ),
          ),
          content: Text(
            'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
            'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
            'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
