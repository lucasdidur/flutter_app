// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on _RegisterControllerBase, Store {
  Computed<bool> _$enableButtonComputed;

  @override
  bool get enableButton => (_$enableButtonComputed ??=
          Computed<bool>(() => super.enableButton, name: '_RegisterControllerBase.enableButton'))
      .value;

  final _$loadingAtom = Atom(name: '_RegisterControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$emailAtom = Atom(name: '_RegisterControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_RegisterControllerBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$nameAtom = Atom(name: '_RegisterControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$registerEmailPasswordAsyncAction = AsyncAction('_RegisterControllerBase.registerEmailPassword');

  @override
  Future<dynamic> registerEmailPassword() {
    return _$registerEmailPasswordAsyncAction.run(() => super.registerEmailPassword());
  }

  final _$_RegisterControllerBaseActionController = ActionController(name: '_RegisterControllerBase');

  @override
  dynamic backtoLogin() {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction(name: '_RegisterControllerBase.backtoLogin');
    try {
      return super.backtoLogin();
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String email) {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction(name: '_RegisterControllerBase.setEmail');
    try {
      return super.setEmail(email);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String password) {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction(name: '_RegisterControllerBase.setPassword');
    try {
      return super.setPassword(password);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String name) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(name: '_RegisterControllerBase.setName');
    try {
      return super.setName(name);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
email: ${email},
password: ${password},
name: ${name},
enableButton: ${enableButton}
    ''';
  }
}
