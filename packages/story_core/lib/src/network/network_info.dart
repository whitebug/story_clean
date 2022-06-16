import 'dart:io';

const String _firebaseCheckAddress = 'https://firebase.google.com/';

/// Class to check internet connection
abstract class NetworkInfo {
  /// If network is available
  Future<bool> isConnected();
}

class NetworkInfoImpl implements NetworkInfo {
  @override
  Future<bool> isConnected() async {
    try {
      final result = await InternetAddress.lookup(_firebaseCheckAddress);
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
}
