import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargeImprima => theme.textTheme.bodyLarge!.imprima;
  static get bodyLargeLatoOnErrorContainer =>
      theme.textTheme.bodyLarge!.lato.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 17.fSize,
      );
  static get bodyLargePTSans => theme.textTheme.bodyLarge!.pTSans;
  static get bodyLargeRedHatMonoff000000 =>
      theme.textTheme.bodyLarge!.redHatMono.copyWith(
        color: Color(0XFF000000),
        fontSize: 18.fSize,
      );
  static get bodyLargeRedHatMonoff676767 =>
      theme.textTheme.bodyLarge!.redHatMono.copyWith(
        color: Color(0XFF676767),
        fontSize: 18.fSize,
      );
  static get bodyLargeRoboto => theme.textTheme.bodyLarge!.roboto;
  static get bodyLargeRobotoGray700 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.gray700,
        fontSize: 18.fSize,
      );
  static get bodyMediumLatoBlack90001 =>
      theme.textTheme.bodyMedium!.lato.copyWith(
        color: appTheme.black90001.withOpacity(0.6),
      );
  static get bodyMediumPTSansOnPrimary =>
      theme.textTheme.bodyMedium!.pTSans.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRedHatTextOnErrorContainer =>
      theme.textTheme.bodyMedium!.redHatText.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPrimaryRegular => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPrimaryRegular9 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineMediumWorkSansBluegray500 =>
      theme.textTheme.headlineMedium!.workSans.copyWith(
        color: appTheme.blueGray500.withOpacity(0.67),
        fontSize: 28.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallAlicePrimary =>
      theme.textTheme.headlineSmall!.alice.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRedHatTextBlack90001 =>
      theme.textTheme.headlineSmall!.redHatText.copyWith(
        color: appTheme.black90001,
      );
  static get headlineSmallRedHatTextBlack90001Regular =>
      theme.textTheme.headlineSmall!.redHatText.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeWorkSansIndigo200 =>
      theme.textTheme.labelLarge!.workSans.copyWith(
        color: appTheme.indigo200,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  // Red text style
  static get redHatTextPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).redHatText;
  // Title text style
  static get titleLargeIBMPlexSansThaiLooped =>
      theme.textTheme.titleLarge!.iBMPlexSansThaiLooped.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeIBMPlexSansThaiLoopedBold =>
      theme.textTheme.titleLarge!.iBMPlexSansThaiLooped.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargePTSansBlack90001 =>
      theme.textTheme.titleLarge!.pTSans.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePTSansPrimary =>
      theme.textTheme.titleLarge!.pTSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeRedHatTextPrimary =>
      theme.textTheme.titleLarge!.redHatText.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRobotoBlack90001 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w300,
      );
  static get titleLargeRobotoGray500 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRobotoGray500Regular =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray500.withOpacity(0.73),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeWorkSans =>
      theme.textTheme.titleLarge!.workSans.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWorkSansBluegray500 =>
      theme.textTheme.titleLarge!.workSans.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeWorkSansBluegray500Bold =>
      theme.textTheme.titleLarge!.workSans.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWorkSansPrimary =>
      theme.textTheme.titleLarge!.workSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 17.fSize,
      );
  static get titleMediumRedHatText =>
      theme.textTheme.titleMedium!.redHatText.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWorkSansBluegray500 =>
      theme.textTheme.titleMedium!.workSans.copyWith(
        color: appTheme.blueGray500,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
      );
  static get titleSmallOnPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get titleSmallWorkSans => theme.textTheme.titleSmall!.workSans;
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get alice {
    return copyWith(
      fontFamily: 'Alice',
    );
  }

  TextStyle get inconsolata {
    return copyWith(
      fontFamily: 'Inconsolata',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get imprima {
    return copyWith(
      fontFamily: 'Imprima',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get iBMPlexSansThaiLooped {
    return copyWith(
      fontFamily: 'IBM Plex Sans Thai Looped',
    );
  }

  TextStyle get redHatMono {
    return copyWith(
      fontFamily: 'Red Hat Mono',
    );
  }

  TextStyle get hind {
    return copyWith(
      fontFamily: 'Hind',
    );
  }

  TextStyle get workSans {
    return copyWith(
      fontFamily: 'Work Sans',
    );
  }

  TextStyle get redHatText {
    return copyWith(
      fontFamily: 'Red Hat Text',
    );
  }

  TextStyle get pTSans {
    return copyWith(
      fontFamily: 'PT Sans',
    );
  }

  TextStyle get baronNeue {
    return copyWith(
      fontFamily: 'Baron Neue',
    );
  }
}
