import 'package:flutter/material.dart';

import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeRobotoGray80001 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyLargeRobotoGray900 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeSFProBlack900 =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeSFProGray800 => theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: appTheme.gray800,
      );
  static get bodyLargeSFProPrimaryContainer =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.25),
      );
  static get bodyLargeSFProPrimaryContainer_1 =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumCenturyGothicBlack900 =>
      theme.textTheme.bodyMedium!.centuryGothic.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumGray90003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyMediumRobotoGray700 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumSFProBlue300 =>
      theme.textTheme.bodyMedium!.sFPro.copyWith(
        color: appTheme.blue300,
        fontSize: 13.fSize,
      );
  static get bodyMediumSFProBluegray80001 =>
      theme.textTheme.bodyMedium!.sFPro.copyWith(
        color: appTheme.blueGray80001,
        fontSize: 15.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  // Headline text style
  static get headlineMediumCenturyGothicOnErrorContainer =>
      theme.textTheme.headlineMedium!.centuryGothic.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeSFProBlack900 =>
      theme.textTheme.labelLarge!.sFPro.copyWith(
        color: appTheme.black900,
      );
  // Title text style
  static get titleLargeRobotoGray90003 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray90003,
      );
  static get titleMediumBlue300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue300,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get titleMediumCabinBlack900 =>
      theme.textTheme.titleMedium!.cabin.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumCenturyGothicBlack900 =>
      theme.textTheme.titleMedium!.centuryGothic.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallRoboto => theme.textTheme.titleSmall!.roboto.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoGray50 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoGray90001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoOnPrimary =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get cabin {
    return copyWith(
      fontFamily: 'Cabin',
    );
  }

  TextStyle get centuryGothic {
    return copyWith(
      fontFamily: 'Century Gothic',
    );
  }

  TextStyle get sFPro {
    return copyWith(
      fontFamily: 'SF Pro',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
