import 'package:accesstoken/data/model/auth_model.dart';
import 'package:accesstoken/data/service/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'register_cubit.dart';

abstract class RegisterState {
  RegisterState();
}

class RegisterInitialState extends RegisterState {
  RegisterInitialState();
}

class RegisterLoadingState extends RegisterState {
  RegisterLoadingState();
}

class RegisterErrorState extends RegisterState {
  final String error;
  RegisterErrorState(this.error);
}

class RegisterCompleteState extends RegisterState {
  RegisterCompleteState();
}
