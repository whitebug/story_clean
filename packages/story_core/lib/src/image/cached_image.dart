import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

/// Storing network image file in cache
class CachedImage {
  /// Get downloaded network image
  static get({
    required String url,
    Key? key,
  }) async {
    return DefaultCacheManager().getSingleFile(url);
  }
}
