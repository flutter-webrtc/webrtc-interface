class RTCOfferOptions {
  bool? iceRestart;
  bool? offerToReceiveAudio;
  bool? offerToReceiveVideo;
  bool? voiceActivityDetection;
}

class RTCAnswerOptions {
  bool? voiceActivityDetection;
}

class RTCConfiguration {
  RTCConfiguration(
      {this.iceServers,
      this.rtcpMuxPolicy,
      this.iceTransportPolicy,
      this.peerIdentity,
      this.iceCandidatePoolSize,
      this.bundlePolicy});
  factory RTCConfiguration.fromMap(Map<String, dynamic> map) {
    return RTCConfiguration(
      iceServers: map['iceServers'] != null
          ? (map['iceServers'] as List)
              .map((e) => RTCIceServer.fromMap(e))
              .toList()
          : null,
      rtcpMuxPolicy: map['rtcpMuxPolicy'],
      iceTransportPolicy: map['iceTransportPolicy'],
      peerIdentity: map['peerIdentity'],
      iceCandidatePoolSize: map['iceCandidatePoolSize'],
      bundlePolicy: map['bundlePolicy'],
    );
  }
  List<RTCIceServer>? iceServers;

  ///Optional: 'negotiate' or 'require'
  String? rtcpMuxPolicy;

  ///Optional: 'relay' or 'all'
  String? iceTransportPolicy;

  /// A DOMString which specifies the target peer identity for the
  /// RTCPeerConnection. If this value is set (it defaults to null),
  /// the RTCPeerConnection will not connect to a remote peer unless
  ///  it can successfully authenticate with the given name.
  String? peerIdentity;

  int? iceCandidatePoolSize;

  ///Optional: 'balanced' | 'max-compat' | 'max-bundle'
  String? bundlePolicy;
}

class RTCIceServer {
  RTCIceServer({this.urls, this.username, this.credential});
  factory RTCIceServer.fromMap(Map<String, dynamic> map) {
    return RTCIceServer(
      urls: map['urls'] != null ? List<String>.from(map['urls']) : null,
      username: map['username'],
      credential: map['credential'],
    );
  }
  List<String>? urls;
  String? username;
  String? credential;
}
