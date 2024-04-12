part of 'blog_screen_notifier.dart';

/// Represents the state of Blog in the application.
class BlogState extends Equatable {
  BlogState({this.blogModeObj});

  BlogModel? blogModeObj;

  @override
  List<Object?> get props => [blogModeObj];

  BlogState copyWith({BlogModel? blogModelObj}) {
    return BlogState(
      blogModeObj: blogModelObj ?? this.blogModeObj,
    );
  }
}
