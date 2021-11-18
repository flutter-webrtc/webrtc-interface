import 'media_stream.dart';
import 'navigator.dart';
import 'rtc_peerconnection.dart';

abstract class RTCFactory {
  Future<RTCPeerConnection> createPeerConnection(
      Map<String, dynamic> configuration,
      [Map<String, dynamic> constraints]);

  Future<MediaStream> createLocalMediaStream(String label);

  Navigator get navigator;
}
