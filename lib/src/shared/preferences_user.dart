import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {

  static final UserPreferences _instancia = new UserPreferences._internal();

  factory UserPreferences() {
    return _instancia;
  }

  UserPreferences._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // Get y Set de Genero
  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int valor) {
    _prefs.setInt('genero', valor);
  }

  // Get y Set de Color Secundario
  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool valor) {
    _prefs.setBool('colorSecundario', valor);
  }

  // Get y Set del nombre
  get nombreUsuario {
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario(String valor) {
    _prefs.setString('nombreUsuario', valor);
  }

  // Get y Set de la ruta de la ultima pagina abierta
  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String valor) {
    _prefs.setString('ultimaPagina', valor);
  }

  // Ninguna de estas propiedades se usa
  // bool   _colorSecundario;
  // int    _genero;
  // String _nombre;

}