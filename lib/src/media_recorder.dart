import 'enums.dart';
import 'media_stream.dart';
import 'media_stream_track.dart';

abstract class MediaRecorder {
  /// For Android use audioChannel param
  /// For iOS use audioTrack
  Future<void> start(
    String path, {
    MediaStreamTrack? videoTrack,
    RecorderAudioChannel? audioChannel,
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
