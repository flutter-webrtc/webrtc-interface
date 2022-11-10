import 'enums.dart';
import 'media_stream.dart';
import 'media_stream_track.dart';

abstract class MediaRecorder {
  /// Starts recording to file at [path].
  /// Optionally, on Android choose [audioChannel] to record.
  /// Optionally, on iOS/OSX set [audioTrack] to record. Only remote audio
  /// tracks are supported!
  /// On web platform use [startWeb] instead.
  Future<void> start(
    String path, {
    MediaStreamTrack? videoTrack,
    RecorderAudioChannel? audioChannel,
    MediaStreamTrack? audioTrack,
  });

  /// Only for Flutter Web
  void startWeb(
    MediaStream stream, {
    Function(dynamic blob, bool isLastOne)? onDataChunk,
    String mimeType,
    int timeSlice = 1000,
  });

  Future<dynamic> stop();
}
