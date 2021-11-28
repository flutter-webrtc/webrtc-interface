import 'optional.dart';
import 'readable_stream_default_reader.dart';
import 'transform_stream.dart';
import 'writable_stream.dart';

class ReadableStream {
  bool locked = true;
  void cancel() {}
  void pipeThrough(TransformStream sink, [Optional? optional]) =>
      throw UnimplementedError();

  void pipeTo(WritableStream sink, [Optional? optional]) =>
      throw UnimplementedError();

  ReadableStreamDefaultReader getReader() => throw UnimplementedError();

  Future<ReadableStream> tee() => throw UnimplementedError();
}
