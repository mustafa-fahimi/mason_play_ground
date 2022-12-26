import 'package:{{project_name.snakeCase()}}/src/config/config.dart';

enum SideMenus {
  dashboard,
}

extension SideMenusEx on SideMenus {
  String get assetAddress {
    switch (this) {
      case SideMenus.dashboard:
        return SvgAssets.dangerAsset;
    }
  }

  String get assetAddressSelected {
    switch (this) {
      case SideMenus.dashboard:
        return SvgAssets.dangerAsset;
    }
  }

  String get title {
    switch (this) {
      case SideMenus.dashboard:
        return 'dashboard';
    }
  }
}
