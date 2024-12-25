abstract class GamerTagException implements Exception {
  final String _message;
  final String _prefix;

  GamerTagException(this._message, this._prefix);

  @override
  String toString() {
    return _prefix + _message;
  }
}

class NotFoundException extends GamerTagException {
  NotFoundException()
      : super("Not found", "Not found");
}

class FailedException extends GamerTagException {
  FailedException({required String message})
      : super(message, "Failed");
}

class CancelledException extends GamerTagException {
  CancelledException()
      : super("Request has been cancelled", "");
}

