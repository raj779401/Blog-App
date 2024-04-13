import 'package:blog_app/presentation/terms_and_conditions_screen/models/terms_and_conditions_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/presentation/terms_and_conditions_screen/models/terms_and_conditions_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/core/app_export.dart';

part 'terms_and_conditions_state.dart';

final termsAndConditionsNotifier =
    StateNotifierProvider<TermsAndConditionsNotifier, TermsAndConditionsState>(
  (ref) => TermsAndConditionsNotifier(TermsAndConditionsState(
    termsAndConditionModelObj: TermsAndConditionsModel(),
  )),
);

/// A notifier that manages the state of a TermsAndConditions according to the event that is dispatched to it.
class TermsAndConditionsNotifier
    extends StateNotifier<TermsAndConditionsState> {
  TermsAndConditionsNotifier(TermsAndConditionsState state) : super(state) {}
}
