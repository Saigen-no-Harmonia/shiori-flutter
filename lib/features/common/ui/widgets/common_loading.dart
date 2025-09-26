import 'package:flutter/material.dart';

import '../../../../theme/app_colors.dart';

class CommonLoading extends StatelessWidget {
  const CommonLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }
}
