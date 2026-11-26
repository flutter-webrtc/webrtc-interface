class RTCIceCandidate {
  RTCIceCandidate(this.candidate, this.sdpMid, this.sdpMLineIndex,
      {this.usernameFragment});
  final String? candidate;
  final String? sdpMid;
  final int? sdpMLineIndex;

  /// The ICE username fragment (ufrag) of the ICE generation the candidate
  /// belongs to, as `RTCIceCandidate.usernameFragment` in the web API. It
  /// changes with every ICE restart. Null when the platform does not report
  /// it. It is never read from [candidate].
  final String? usernameFragment;

  dynamic toMap() {
    return {
      'candidate': candidate,
      'sdpMid': sdpMid,
      'sdpMLineIndex': sdpMLineIndex
    };
  }
}
