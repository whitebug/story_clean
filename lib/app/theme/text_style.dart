import 'package:flutter/painting.dart';
import 'package:story_clean/app/theme/colors.dart';

//ignore_for_file: public_member_api_docs

/// Styles of texts.

const TextStyle _text = TextStyle(
  fontStyle: FontStyle.normal,
  color: textColorPrimary,
);

//Light
TextStyle textLight = _text.copyWith(fontWeight: FontWeight.w300);
TextStyle textLight12 = textLight.copyWith(fontSize: 12.0);
TextStyle textLight12Grey = textLight12.copyWith(color: lightTextGrey);
TextStyle textLight12White = textLight12.copyWith(color: white);

//Regular
TextStyle textRegular = _text.copyWith(fontWeight: FontWeight.normal);
TextStyle textRegular12 = textLight.copyWith(fontSize: 12.0);
TextStyle textRegular12White = textRegular12.copyWith(color: white);
TextStyle textRegular16 = textRegular.copyWith(fontSize: 16.0);
TextStyle textRegular16Secondary = textRegular16.copyWith(color: textColorSecondary);
TextStyle textRegular16Grey = textRegular16.copyWith(color: textColorGrey);
TextStyle textRegular16White = textRegular16.copyWith(color: white);
TextStyle textRegular16Black = textRegular16.copyWith(color: black);

//Medium
TextStyle textMedium = _text.copyWith(fontWeight: FontWeight.w500);
TextStyle textMedium20 = textMedium.copyWith(fontSize: 20.0);
TextStyle textMedium28 = textMedium.copyWith(fontSize: 28.0);
TextStyle textMedium28White = textMedium.copyWith(fontSize: 28.0, color: white);
TextStyle textMedium40 = textMedium.copyWith(fontSize: 40.0);

//Bold
TextStyle textBold = _text.copyWith(fontWeight: FontWeight.bold);
TextStyle textBold12 = textBold.copyWith(fontSize: 12.0);
TextStyle textBold15 = textBold.copyWith(fontSize: 15.0);
TextStyle textBold12White = textBold12.copyWith(color: white);
TextStyle textBold16White = textBold.copyWith(fontSize: 16, color: white);
