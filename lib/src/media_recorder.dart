import 'enums.dart';
import 'media_stream.dart';
import 'media_stream_track.dart';

abstract class MediaRecorder {
  /// Starts recording to file at [path].
  /// Optionally, on Android choose [audioChannel] to record.
  /// Optionally, on iOS/OSX set [audioTrack] to record. Only remote audio
  /// tracks are supported!
  /// Optionally, [rotationDegrees] allows to rotate resulting video.
  /// On web platform use [startWeb] instead.
  Future<void> start(
    String path, {
    MediaStreamTrack? videoTrack,
    RecorderAudioChannel? audioChannel,
    MediaStreamTrack? audioTrack,
    int rotationDegrees = 0,
  });
  
  /// Changes current video track
  Future<void> changeVideoTrack(MediaStreamTrack videoTrack);

  /// Only for Flutter Web
  void startWeb(
    MediaStream stream, {
    Function(dynamic blob, bool isLastOne)? onDataChunk,
    String mimeType,
    int timeSlice = 1000,
  });

  Future<dynamic> stop();
}
