import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  // Normál szöveghez
  static final textTheme = TextTheme(
    displayLarge: GoogleFonts.inter(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    titleLarge: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
    bodyLarge: GoogleFonts.inter(fontSize: 16, color: Colors.black87),
    bodyMedium: GoogleFonts.inter(fontSize: 14, color: Colors.black87),
    labelLarge: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600, letterSpacing: 1),
    // Kódhoz
    bodySmall: GoogleFonts.jetBrainsMono(fontSize: 13, color: Colors.black87),
  );

  static final textThemeDark = TextTheme(
    displayLarge: GoogleFonts.inter(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    titleLarge: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
    bodyLarge: GoogleFonts.inter(fontSize: 16, color: Colors.white),
    bodyMedium: GoogleFonts.inter(fontSize: 14, color: Colors.white),
    labelLarge: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600, letterSpacing: 1, color: Colors.grey[400]),
    // Kódhoz
    bodySmall: GoogleFonts.jetBrainsMono(fontSize: 13, color: Colors.grey[300]),
  );
}
