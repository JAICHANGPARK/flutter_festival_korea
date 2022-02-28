import 'package:asset_cache/asset_cache.dart';

final sliderImageAssets = ImageAssetCache(basePath: 'assets/slider_img/');

class AssetManager{
  static String defaultPath = "assets/slider_img";
  static String kSliderBackgroundImage = "$defaultPath/background.png";
  static String kSliderBackgroundEarthImage = "$defaultPath/earth.png";
  static String kSliderLuggageImage = "$defaultPath/luggage.png";
  static String kSliderLogoColor= "$defaultPath/logo_01.png";
  static String kSliderLogoWhite= "$defaultPath/logo_02.png";
}