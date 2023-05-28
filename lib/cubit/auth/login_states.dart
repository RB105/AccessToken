import 'package:accesstoken/data/model/auth_model.dart';
import 'package:accesstoken/data/service/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'login_cubit.dart';

abstract class LoginState {
  LoginState();
}

class LoginLoadingState extends LoginState {
  LoginLoadingState();
}

class LoginInitialState extends LoginState {
  LoginInitialState();
}

class LoginErrorState extends LoginState {
  final String error;
  LoginErrorState(this.error);
}

class LoginCompleteState extends LoginState {
  LoginCompleteState();
}
