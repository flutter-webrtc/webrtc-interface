import 'rtc_ice_candidate.dart';

/// The pair of ICE candidates a peer connection sends and receives on.
class RTCIceCandidatePair {
  RTCIceCandidatePair(this.local, this.remote,
      {this.reason, this.lastDataReceivedMs});

  /// The local candidate of the pair.
  final RTCIceCandidate local;

  /// The remote candidate of the pair.
  final RTCIceCandidate remote;

  /// Why the pair was selected, as reported by the native WebRTC library.
  /// Null where the platform does not say (web).
  final String? reason;

  /// When data was last received on the pair, in milliseconds on the native
  /// WebRTC clock. Null where the platform does not say (web).
  final int? lastDataReceivedMs;
}
