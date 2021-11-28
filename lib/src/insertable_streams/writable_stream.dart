import 'writable_stream_default_writer.dart';

class WritableStream {
  bool locked = true;
  void abort() => throw UnimplementedError();
  void close() => throw UnimplementedError();
  WritableStreamDefaultWriter getWriter() => throw UnimplementedError();
}
