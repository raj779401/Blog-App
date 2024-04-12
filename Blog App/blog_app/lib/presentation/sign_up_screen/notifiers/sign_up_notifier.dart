import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:blog_app/presentation/sign_up_screen/models/sign_up_model.dart';

part 'sign_up_state.dart';

final StateNotifierProvider<SignUpNotifier, SignUpState> signUpNotifier =
    StateNotifierProvider<SignUpNotifier, SignUpState>(
        (ref) => SignUpNotifier(SignUpState(signUpModelObj: SignUpModel())));

class SignUpNotifier extends StateNotifier<SignUpState> {
  SignUpNotifier(SignUpState state) : super(state);
}
