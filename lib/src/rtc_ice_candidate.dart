class RTCIceCandidate {
  RTCIceCandidate(this.candidate, this.sdpMid, this.sdpMLineIndex,
      {String? usernameFragment})
      : usernameFragment = usernameFragment ?? _usernameFragmentOf(candidate);
  final String? candidate;
  final String? sdpMid;
  final int? sdpMLineIndex;

  /// The ICE username fragment (ufrag) of the ICE generation the candidate
  /// belongs to, as `RTCIceCandidate.usernameFragment` in the web API. It
  /// changes with every ICE restart. When it is not given it is read from
  /// [candidate], where native platforms write it as `ufrag <value>`. Null
  /// when neither says.
  final String? usernameFragment;

  static final _ufragPattern = RegExp(r'(?:^|\s)ufrag (\S+)');

  static String? _usernameFragmentOf(String? candidate) =>
      candidate == null ? null : _ufragPattern.firstMatch(candidate)?.group(1);

  dynamic toMap() {
    return {
      'candidate': candidate,
      'sdpMid': sdpMid,
      'sdpMLineIndex': sdpMLineIndex
    };
  }
}
