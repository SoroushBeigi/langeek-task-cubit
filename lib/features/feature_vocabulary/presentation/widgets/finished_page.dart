import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinishedPage extends StatelessWidget {
  const FinishedPage({
    required this.onPressed,
    super.key,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.done,
            color: Colors.green,
            size: ScreenUtil().setWidth(90),
          ),
          const Text(
            'Congratulations!\n you have learned all of the words',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.green),
          ),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: onPressed, child: const Text('Repeat')),
        ],
      ),
    );
  }
}
