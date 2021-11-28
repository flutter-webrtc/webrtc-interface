abstract class TransformStreamDefaultController {
  int desiredSize = 0;

  void enqueue(chunk);

  void error(reason);

  void terminate();
}
