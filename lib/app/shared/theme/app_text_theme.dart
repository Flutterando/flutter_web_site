import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension TextExtension on Text {

  // Home Screen Text Styles

  Text featureFirstSquaredCard({TextStyle style}) {
    TextStyle defaultStyle = GoogleFonts.firaCode(
      fontSize: 64,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.32,
      color: Colors.white,
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text titleSquaredCard({TextStyle style}) => sectionTitle(style: style);

  Text numberCountSquaredCard({TextStyle style}) {
    TextStyle defaultStyle = GoogleFonts.firaCode(
      fontSize: 43,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.21,
      color: Colors.white,
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text subtitleSquaredCard({TextStyle style}) {
    TextStyle defaultStyle = GoogleFonts.firaCode(
      fontSize: 23,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.12,
      color: Colors.white,
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text bodySquaredCard({TextStyle style}) {
    TextStyle defaultStyle = GoogleFonts.firaCode(
      fontSize: 15,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.07,
      color: Colors.white,
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text buttonSquaredCard({TextStyle style}) {
    TextStyle defaultStyle = GoogleFonts.firaCode(
      fontSize: 17,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w800,
      letterSpacing: 1.02,
      color: Colors.white,
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  // Team Screen Text Styles

  Text sectionTitle({TextStyle style}) {
    TextStyle defaultStyle = GoogleFonts.firaCode(
      fontSize: 55,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.28,
      color: Colors.white,
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text teamParticipantName({TextStyle style}) {
    TextStyle defaultStyle = GoogleFonts.firaCode(
      height: 27,
      fontSize: 23,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.22,
      color: Colors.white,
    );
    return Text(this.data, style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text teamDescription({TextStyle style}) => buttonSquaredCard(style: style);

  Text teamButtonDescription({TextStyle style}) => buttonSquaredCard(style: style);

  // First Screen Text Styles

  Text packageTitle({TextStyle style}) {
    TextStyle defaultStyle = GoogleFonts.firaCode(
      fontSize: 30,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    );
    return Text(this.data, style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text packageDescription({TextStyle style}) {
    TextStyle defaultStyle = GoogleFonts.firaCode(
      height: 17,
      fontSize: 13,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    );
    return Text(this.data, style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text packageButtonDescription({TextStyle style}) => buttonSquaredCard(style: style);

  // Businnes

  Text businnesName({TextStyle style}) {
    TextStyle defaultStyle = GoogleFonts.firaCode(
      fontSize: 16,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      letterSpacing: -5,
      color: Colors.white,
    );
    return Text(this.data, style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text businnesButton({TextStyle style}) {
    TextStyle defaultStyle = GoogleFonts.firaCode(
      fontSize: 13,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w800,
      letterSpacing: 0,
      color: Colors.white,
    );
    return Text(this.data, style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  // Footer 

  Text footerText({TextStyle style}) {
    TextStyle defaultStyle = GoogleFonts.firaCode(
      fontSize: 25,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.white,
    );
    return Text(this.data, style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

}
