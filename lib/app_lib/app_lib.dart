/// Dart Packages
export 'dart:async';
export 'dart:math';
export 'package:flutter/services.dart';
export 'package:flutter/foundation.dart';

// Exporting Paths
export 'package:flutter/material.dart'
    hide
        RefreshCallback; // Imports the Material library from Flutter framework - Android
export 'package:flutter/cupertino.dart';
export '../screens/init_screens/init.dart'; // Init Screen
export '../screens/init_screens/splash.dart'; // Splash Import
export '../global_constants/values.dart'; // Library File that takes care of teh global constant file
export '../global_widgets/global_widgets.dart'; // Library File that takes care of teh global constant file
export '../screens/onboard_screen/on_board.dart'; // Onboard Import

/// Models
export '../model/on_board_model.dart'; // Onboard Import
export '../model/file_model.dart'; // File Import
export '../model/registration_model.dart';

/// Gallery Files Import
export '../screens/gallery/gallery.dart'; // Gallery Import
export '../screens/gallery/audio.dart'; // Audio Import
export '../screens/gallery/files.dart'; // Files Import
export '../screens/gallery/video.dart'; // Video Import
export '../screens/gallery/images.dart'; // Images Import
export '../screens/gallery/file_storage.dart'; // Images Import
export '../screens/gallery/grid_view.dart';
export '../screens/gallery/dynamic_grid_view.dart';
export '../screens/gallery/sliver_grid_view.dart';
export '../screens/gallery/image_detail.dart';

/// Auth Screens
export '../screens/auth/sign_in.dart';
export '../screens/auth/sign_up.dart';
export '../screens/auth/forgot_password.dart';
export '../screens/auth/contact_us.dart';

/// Generic Screens
export '../screens/generic_screens/device_info.dart';
export '../screens/generic_screens/generic_screen.dart';
export '../screens/gallery/video_lib.dart';

/// Third-Party Packages
export 'package:flutter_storage_path/flutter_storage_path.dart';
// export 'package:permission_handler/permission_handler.dart';
export 'package:device_info_plus/device_info_plus.dart';
export 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
export 'package:cached_network_image/cached_network_image.dart';
export 'package:fluttertoast/fluttertoast.dart';
export 'package:youtube_player_flutter/youtube_player_flutter.dart';
export 'package:dio/dio.dart';
export 'package:shared_preferences/shared_preferences.dart';
export 'package:maps_launcher/maps_launcher.dart';

/// iOS Widgets Screens
export '../screens/ios_screens/ios_widgets.dart';

/// Repository & API End-Points
export '../repository/api_endpoints.dart';
export '../repository/api_services.dart';
