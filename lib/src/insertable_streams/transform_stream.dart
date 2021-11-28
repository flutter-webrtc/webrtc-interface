import 'readable_stream.dart';
import 'writable_stream.dart';

class TransformStream {
  TransformStream(this.readable, this.writable);
  factory TransformStream.clone(TransformStream transformer) {
    return transformer._cloneInternal();
  }
  TransformStream _cloneInternal() {
    throw UnimplementedError();
  }

  ReadableStream readable;
  WritableStream writable;
}
