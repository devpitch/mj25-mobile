// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $ConfigGen {
  const $ConfigGen();

  /// File path: config/app_config.json
  String get appConfig => 'config/app_config.json';

  /// List of all assets
  List<String> get values => [appConfig];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/check-ticked.png
  AssetGenImage get checkTicked =>
      const AssetGenImage('assets/images/check-ticked.png');

  /// File path: assets/images/check.png
  AssetGenImage get check => const AssetGenImage('assets/images/check.png');

  /// File path: assets/images/guest-user.png
  AssetGenImage get guestUser =>
      const AssetGenImage('assets/images/guest-user.png');

  /// File path: assets/images/invite-link.png
  AssetGenImage get inviteLink =>
      const AssetGenImage('assets/images/invite-link.png');

  /// File path: assets/images/refer.png
  AssetGenImage get refer => const AssetGenImage('assets/images/refer.png');

  /// File path: assets/images/symbol.png
  AssetGenImage get symbol => const AssetGenImage('assets/images/symbol.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    checkTicked,
    check,
    guestUser,
    inviteLink,
    refer,
    symbol,
  ];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/add-user.svg
  String get addUser => 'assets/svgs/add-user.svg';

  /// File path: assets/svgs/attendance.svg
  String get attendance => 'assets/svgs/attendance.svg';

  /// File path: assets/svgs/caution.svg
  String get caution => 'assets/svgs/caution.svg';

  /// File path: assets/svgs/copy.svg
  String get copy => 'assets/svgs/copy.svg';

  /// File path: assets/svgs/delete.svg
  String get delete => 'assets/svgs/delete.svg';

  /// File path: assets/svgs/filter.svg
  String get filter => 'assets/svgs/filter.svg';

  /// File path: assets/svgs/generate.svg
  String get generate => 'assets/svgs/generate.svg';

  /// File path: assets/svgs/guest.svg
  String get guest => 'assets/svgs/guest.svg';

  /// File path: assets/svgs/link.svg
  String get link => 'assets/svgs/link.svg';

  /// File path: assets/svgs/scan.svg
  String get scan => 'assets/svgs/scan.svg';

  /// File path: assets/svgs/search-user.svg
  String get searchUser => 'assets/svgs/search-user.svg';

  /// File path: assets/svgs/search.svg
  String get search => 'assets/svgs/search.svg';

  /// File path: assets/svgs/upload.svg
  String get upload => 'assets/svgs/upload.svg';

  /// List of all assets
  List<String> get values => [
    addUser,
    attendance,
    caution,
    copy,
    delete,
    filter,
    generate,
    guest,
    link,
    scan,
    searchUser,
    search,
    upload,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
  static const $ConfigGen config = $ConfigGen();
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
