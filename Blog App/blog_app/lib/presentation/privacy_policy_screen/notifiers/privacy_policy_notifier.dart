import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:blog_app/presentation/privacy_policy_screen/models/privacy_policy_model.dart';

part 'privacy_policy_state.dart';

final privacyPolicyNotifier =
    StateNotifierProvider<PrivacyPolicyNotifier, PrivacyPolicyState>(
  (ref) => PrivacyPolicyNotifier(
      PrivacyPolicyState(privacyPolicyModelObj: PrivacyPolicyModel())),
);

class PrivacyPolicyNotifier extends StateNotifier<PrivacyPolicyState> {
  PrivacyPolicyNotifier(PrivacyPolicyState state) : super(state) {}
}
