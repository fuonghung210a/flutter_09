import 'comment.dart';
import 'member.dart';

class Post {
  String _postPlot;
  List<String> _img = [];
  Member _author;
  List<Comment> _comments = [];
  List<Comment> get comments => _comments;
  Post(
      {required String postPlot,
      required List<String> img,
      required Member author,
      List<Comment> comments = const []})
      : _postPlot = postPlot,
        _img = img,
        _author = author,
        _comments = comments;
  void addComment(Comment postName) {
    _comments.add(postName);
  }

  @override
  String toString() {
    return comments.toString();
  }
}
