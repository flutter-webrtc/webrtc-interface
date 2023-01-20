class RTCRtpCodecCapability {
  RTCRtpCodecCapability(
      {this.channels,
      required this.clockRate,
      required this.mimeType,
      this.sdpFmtpLine});
  num? channels;
  num clockRate;
  String mimeType;
  String? sdpFmtpLine;
}

class RTCRtpHeaderExtensionCapability {
  RTCRtpHeaderExtensionCapability(this.uri);
  String uri;
}

class RTCRtpCapabilities {
  RTCRtpCapabilities({this.codecs, this.headerExtensions, this.fecMechanisms});
  List<RTCRtpCodecCapability>? codecs;
  List<RTCRtpHeaderExtensionCapability>? headerExtensions;
  List<String>? fecMechanisms;
}
