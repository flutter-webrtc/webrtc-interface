abstract class ReadableStreamDefaultReader {
  late bool closed;

  late int desiredSize;

  void abort();

  void close();

  void releaseLock();

  void read(Function(bool done, dynamic value) chunkHandler);
}
