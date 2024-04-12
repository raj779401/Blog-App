import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/presentation/blog_screen/models/blog_screen_model.dart';
import 'package:blog_app/core/app_export.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'blog_screen_state.dart';

final blogNotifier = StateNotifierProvider<BlogNotifier, BlogState>(
    (ref) => BlogNotifier(BlogState()));

/// A notifier that manages the state of a Blog according to the event that is dispatched to it.
class BlogNotifier extends StateNotifier<BlogState> {
  BlogNotifier(BlogState state) : super(state);
}
