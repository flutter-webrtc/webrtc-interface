abstract class WritableStreamDefaultWriter {
  late bool closed;

  late int desiredSize;

  void abort();

  void close();

  void releaseLock();

  void write(chunk);
}
