// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $LibGen {
  const $LibGen();

  /// Directory path: lib/aesstes
  $LibAesstesGen get aesstes => const $LibAesstesGen();
}

class $LibAesstesGen {
  const $LibAesstesGen();

  /// Directory path: lib/aesstes/icons
  $LibAesstesIconsGen get icons => const $LibAesstesIconsGen();

  /// Directory path: lib/aesstes/images
  $LibAesstesImagesGen get images => const $LibAesstesImagesGen();
}

class $LibAesstesIconsGen {
  const $LibAesstesIconsGen();

  /// File path: lib/aesstes/icons/eye-slash.svg
  String get eyeSlash => 'lib/aesstes/icons/eye-slash.svg';

  /// File path: lib/aesstes/icons/lock.svg
  String get lock => 'lib/aesstes/icons/lock.svg';

  /// File path: lib/aesstes/icons/sms.svg
  String get sms => 'lib/aesstes/icons/sms.svg';

  /// File path: lib/aesstes/icons/user.svg
  String get user => 'lib/aesstes/icons/user.svg';

  /// List of all assets
  List<String> get values => [eyeSlash, lock, sms, user];
}

class $LibAesstesImagesGen {
  const $LibAesstesImagesGen();

  /// File path: lib/aesstes/images/Blue White Minimal Modern Simple Bold Business Mag Logo 3.png
  AssetGenImage
  get blueWhiteMinimalModernSimpleBoldBusinessMagLogo3 => const AssetGenImage(
    'lib/aesstes/images/Blue White Minimal Modern Simple Bold Business Mag Logo 3.png',
  );

  /// File path: lib/aesstes/images/image 6.png
  AssetGenImage get image6 =>
      const AssetGenImage('lib/aesstes/images/image 6.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    blueWhiteMinimalModernSimpleBoldBusinessMagLogo3,
    image6,
  ];
}

abstract final class Assets {
  static const $LibGen lib = $LibGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
