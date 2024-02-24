import 'member.dart';
import 'post.dart';

class Comment {
  Post _postName;
  String _commentPlot;
  Member _commentedMember;

  Comment(
      {required Post postName,
      required String commentPlot,
      required Member commentedMember})
      : _postName = postName,
        _commentPlot = commentPlot,
        _commentedMember = commentedMember;
  @override
  String toString() {
    return 'Comment: $_commentPlot by ${_commentedMember.name}';
  }
}
