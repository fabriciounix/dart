void main() {
  try {
    print((2 / 0).toInt());
  } catch (e) {
    // catch (e, stackStrace)
    print("Ocorreu um erro");
    print(e);
    // print(stackStrace);
    // rethrow;
    // throw Exception("Ocorreu um erro xpto");
    //throw CustomError('erro Customizado');
  }
}

class CustomError implements Exception {
  final String error;
  CustomError(this.error);
}
