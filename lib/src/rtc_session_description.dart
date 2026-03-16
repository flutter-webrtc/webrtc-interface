import 'enums.dart';

class RTCSessionDescription {
  RTCSessionDescription(this.sdp, this.type);
  String? sdp;
  SdpType? type;
  dynamic toMap() {
    return {'sdp': sdp, 'type': typeSdpTypeToString[type]};
  }
}
