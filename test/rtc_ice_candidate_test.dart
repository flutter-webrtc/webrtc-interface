import 'package:test/test.dart';
import 'package:webrtc_interface/webrtc_interface.dart';

void main() {
  group('RTCIceCandidate.usernameFragment', () {
    test('is the given value when there is one', () {
      final candidate = RTCIceCandidate(
          'candidate:1 1 udp 2122260223 192.0.2.1 50000 typ host', '0', 0,
          usernameFragment: 'EfGh');
      expect(candidate.usernameFragment, 'EfGh');
    });

    test('is null when it is not given, also when the line names one', () {
      expect(
          RTCIceCandidate(
                  'candidate:1 1 udp 2122260223 192.0.2.1 50000 typ host generation 1 ufrag AbCd network-id 1',
                  '0',
                  0)
              .usernameFragment,
          isNull);
      expect(RTCIceCandidate(null, null, null).usernameFragment, isNull);
    });

    test('is left out of toMap', () {
      final map = RTCIceCandidate('candidate:1 ufrag AbCd', '0', 0,
              usernameFragment: 'AbCd')
          .toMap() as Map;
      expect(map.keys, ['candidate', 'sdpMid', 'sdpMLineIndex']);
    });
  });
}
