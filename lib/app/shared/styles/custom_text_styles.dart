import 'package:estudos/app/shared/styles/custom_color.dart';
import 'package:flutter/material.dart';

///Classe para os styles de texto
///
/// Classe abstrata para utilizarmos os
/// textStyles no projeto
/// Padrão da nomenclatura <NOMEDOSTYLENOFIGMA><COLORS><FONTWEIGHT><FONTSIZE>
abstract class CustomTextStyles {
  static const smallTextBlackNormal12 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 12,
    color: CustomColors.COLOR_BLACK,
  );

  static const smallTextMono2Normal12 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 12,
    color: CustomColors.COLOR_GREY,
  );

  static const smallTextMono2Bold12 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 12,
    color: CustomColors.COLOR_GREY,
  );

  static const smallTextColorBaseBold12 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 12,
    color: CustomColors.COLOR_BASE,
  );
  static const smallTextColorBaseNormal12 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 12,
    color: CustomColors.COLOR_BASE,
  );

  static const smallTextWhiteNormal12 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 12,
    color: CustomColors.COLOR_WHITE,
  );

  static const smallTextMono3Normal12 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 12,
    color: CustomColors.COLOR_MONO_3,
  );

  static const smallTextRedNormal12 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 12,
    color: Colors.red,
  );

  static const titleSmallBold14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    color: CustomColors.COLOR_BLACK,
  );

  static const mediumTextWhiteBold14 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: CustomColors.COLOR_WHITE,
  );

  static const mediumTextWhiteNormal14 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 14,
    color: CustomColors.COLOR_WHITE,
  );

  static const linkColorBaseBold16 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: CustomColors.COLOR_BASE,
  );

  static const linkColorBaseNormal16 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 16,
    color: CustomColors.COLOR_BASE,
  );

  static const linkGreyBold16 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: CustomColors.COLOR_GREY,
  );

  static const linkGreyNormal16 = TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 16,
    color: CustomColors.COLOR_GREY,
  );

  static const linkBlackBold16 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: CustomColors.COLOR_BLACK,
  );

  static const linkWhiteBold16 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: CustomColors.COLOR_WHITE,
  );

  static const linkWhiteNormal16 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 16,
    color: CustomColors.COLOR_WHITE,
  );

  static const textBlackNormal16 = TextStyle(
    fontSize: 16,
    fontStyle: FontStyle.normal,
    color: CustomColors.COLOR_BLACK,
  );

  static const textBlackBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: CustomColors.COLOR_BLACK,
  );

  static const textBaseColorNormal16 = TextStyle(
    fontSize: 16,
    fontStyle: FontStyle.normal,
    color: CustomColors.COLOR_BASE,
  );

  static const textBaseColorBold16 = TextStyle(
    fontSize: 16,
    fontStyle: FontStyle.normal,
    color: CustomColors.COLOR_BASE,
    fontWeight: FontWeight.bold,
  );

  static const textMono1w30016 = TextStyle(
      color: CustomColors.COLOR_BLACK,
      fontSize: 16,
      fontWeight: FontWeight.w300);

  static const titleBlackBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    color: CustomColors.COLOR_BLACK,
  );

  static const titleBlackNormal18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    color: CustomColors.COLOR_BLACK,
  );

  static const titleWhiteNormal18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    color: CustomColors.COLOR_WHITE,
  );

  static const titleBaseColorBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    color: CustomColors.COLOR_BASE,
  );
  static const titleBaseColorNormal18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    color: CustomColors.COLOR_BASE,
  );

  static const superTitleColorBaseNormal22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    color: CustomColors.COLOR_BASE,
  );

  static const superTitleBlackNormal22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
  );

  static const superTitleWhiteNormal22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    color: CustomColors.COLOR_WHITE,
  );
}
