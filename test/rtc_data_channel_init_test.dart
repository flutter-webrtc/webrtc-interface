import 'package:test/test.dart';
import 'package:webrtc_interface/src/rtc_data_channel.dart';

void main() {
  group('RTCDataChannelInit.toMap', () {
    test('includes zero to disable retransmissions', () {
      final init = RTCDataChannelInit()..maxRetransmits = 0;

      expect(init.toMap(), containsPair('maxRetransmits', 0));
    });

    test('includes a positive retransmission limit', () {
      final init = RTCDataChannelInit()..maxRetransmits = 3;

      expect(init.toMap(), containsPair('maxRetransmits', 3));
    });

    test('omits the negative sentinel', () {
      final init = RTCDataChannelInit()..maxRetransmits = -1;

      expect(init.toMap(), isNot(contains('maxRetransmits')));
    });

    test('omits an unspecified retransmission limit', () {
      expect(RTCDataChannelInit().toMap(), isNot(contains('maxRetransmits')));
    });
  });
}
