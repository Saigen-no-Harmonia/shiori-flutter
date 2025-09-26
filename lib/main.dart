import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'routing/router.dart';
import 'theme/app_colors.dart';

void main() {
  initializeDateFormatting('ja');
  runApp(
    const ProviderScope(
      child: ShioriApp()
    ),
  );
}

class ShioriApp extends ConsumerWidget {
  const ShioriApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Shiori',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.notoSerifJpTextTheme(),
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
