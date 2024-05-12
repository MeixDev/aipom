/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/EXPSHARE.png
  AssetGenImage get expshare =>
      const AssetGenImage('assets/icons/EXPSHARE.png');

  /// File path: assets/icons/abilities.png
  AssetGenImage get abilities =>
      const AssetGenImage('assets/icons/abilities.png');

  /// File path: assets/icons/back.png
  AssetGenImage get back => const AssetGenImage('assets/icons/back.png');

  /// File path: assets/icons/berries.png
  AssetGenImage get berries => const AssetGenImage('assets/icons/berries.png');

  /// File path: assets/icons/encounters.png
  AssetGenImage get encounters =>
      const AssetGenImage('assets/icons/encounters.png');

  /// File path: assets/icons/hardcoded.png
  AssetGenImage get hardcoded =>
      const AssetGenImage('assets/icons/hardcoded.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/items.png
  AssetGenImage get items => const AssetGenImage('assets/icons/items.png');

  /// File path: assets/icons/linking_cord.png
  AssetGenImage get linkingCord =>
      const AssetGenImage('assets/icons/linking_cord.png');

  /// File path: assets/icons/metadata.png
  AssetGenImage get metadata =>
      const AssetGenImage('assets/icons/metadata.png');

  /// File path: assets/icons/metronome.png
  AssetGenImage get metronome =>
      const AssetGenImage('assets/icons/metronome.png');

  /// File path: assets/icons/moon_stone.png
  AssetGenImage get moonStone =>
      const AssetGenImage('assets/icons/moon_stone.png');

  /// File path: assets/icons/moves.png
  AssetGenImage get moves => const AssetGenImage('assets/icons/moves.png');

  /// File path: assets/icons/phone.png
  AssetGenImage get phone => const AssetGenImage('assets/icons/phone.png');

  /// File path: assets/icons/pokemon.png
  AssetGenImage get pokemon => const AssetGenImage('assets/icons/pokemon.png');

  /// File path: assets/icons/regional_dex.png
  AssetGenImage get regionalDex =>
      const AssetGenImage('assets/icons/regional_dex.png');

  /// File path: assets/icons/ribbons.png
  AssetGenImage get ribbons => const AssetGenImage('assets/icons/ribbons.png');

  /// File path: assets/icons/rotomphone.png
  AssetGenImage get rotomphone =>
      const AssetGenImage('assets/icons/rotomphone.png');

  /// File path: assets/icons/sun_stone.png
  AssetGenImage get sunStone =>
      const AssetGenImage('assets/icons/sun_stone.png');

  /// File path: assets/icons/town_map.png
  AssetGenImage get townMap => const AssetGenImage('assets/icons/town_map.png');

  /// File path: assets/icons/trainer_types.png
  AssetGenImage get trainerTypes =>
      const AssetGenImage('assets/icons/trainer_types.png');

  /// File path: assets/icons/trainers.png
  AssetGenImage get trainers =>
      const AssetGenImage('assets/icons/trainers.png');

  /// File path: assets/icons/types.png
  AssetGenImage get types => const AssetGenImage('assets/icons/types.png');

  /// File path: assets/icons/unknown_front.png
  AssetGenImage get unknownFront =>
      const AssetGenImage('assets/icons/unknown_front.png');

  /// File path: assets/icons/unknown_icon.png
  AssetGenImage get unknownIcon =>
      const AssetGenImage('assets/icons/unknown_icon.png');

  /// File path: assets/icons/unknown_item.png
  AssetGenImage get unknownItem =>
      const AssetGenImage('assets/icons/unknown_item.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        expshare,
        abilities,
        back,
        berries,
        encounters,
        hardcoded,
        home,
        items,
        linkingCord,
        metadata,
        metronome,
        moonStone,
        moves,
        phone,
        pokemon,
        regionalDex,
        ribbons,
        rotomphone,
        sunStone,
        townMap,
        trainerTypes,
        trainers,
        types,
        unknownFront,
        unknownIcon,
        unknownItem
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
