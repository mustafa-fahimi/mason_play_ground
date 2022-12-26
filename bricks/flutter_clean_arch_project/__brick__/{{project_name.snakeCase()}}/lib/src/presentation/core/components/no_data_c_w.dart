import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/core/components/elevated_button_c_w.dart';

class NoDataCW extends StatelessWidget {
  const NoDataCW({
    super.key,
    this.height = 140,
    this.onTapRetry,
  });
  final double height;
  final dynamic Function()? onTapRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'empty_list',
            textAlign: TextAlign.center,
          ),
          if (onTapRetry != null) ...[
            const SizedBox(height: 8),
            ElevatedButtonCW(
              btnText: 'retry',
              onTap: onTapRetry,
              height: 30,
              width: 90,
            ),
          ],
        ],
      ),
    );
  }
}
