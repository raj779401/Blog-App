import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [blog_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BlogModel extends Equatable {
  BlogModel();

  BlogModel copyWith() {
    return BlogModel();
  }

  @override
  List<Object?> get props => [];
}
