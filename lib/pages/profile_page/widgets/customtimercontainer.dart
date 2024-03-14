import 'package:flutter/material.dart';
import 'package:self_service_app/utlities/widgets/customtext.dart';

class CustomtimerContainer extends StatelessWidget {
  const CustomtimerContainer(
      {super.key, required this.iconallyarrow, required this.timely});
  final IconData iconallyarrow;
  final String timely;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Icon(
              Icons.watch_later,
              color: Colors.brown,
            ),
            Icon(
              iconallyarrow,
              color: Colors.brown,
            ),
            const Spacer(),
            CustomText(
              text: timely,
              color: Colors.brown,
            )
            //Icon(Icons.arrow_downward_rounded),
          ],
        ),
      ),
    );
  }
}
