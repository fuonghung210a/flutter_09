import 'comment.dart';
import 'member.dart';
import 'post.dart';

void main() {
  Member thuong = Member(
      name: 'Thuong',
      avatar: 'Nghien',
      dateOfBirth: '26/3/2003',
      phoneNumber: '0909909090',
      email: 'thuongnghien@gmail.com',
      isMale: true);
  Member thanh = Member(
      name: 'Thanh',
      avatar: 'Nghien lv 2',
      dateOfBirth: '26/7/2003',
      phoneNumber: '09012909090',
      email: 'thanhnghienlv2@gmail.com',
      isMale: true);
  Member hung = Member(
      name: 'Hung',
      avatar: 'Gruuuuuuu',
      dateOfBirth: '26/12/2003',
      phoneNumber: '0963185823',
      email: 'phuonghung210a@gmail.com',
      isMale: true);
  Post hungPost = Post(
    postPlot: 'Pursuit Happiness is a very good film',
    img: ['Will Smith', 'Jarden Smith'],
    author: hung,
    comments: [],
  );
  Comment hungComment = Comment(
    postName: hungPost,
    commentPlot: 'I love this film',
    commentedMember: hung,
  );
  Comment thuongComment = Comment(
    postName: hungPost,
    commentPlot: 'This movie is absolutely inspiring',
    commentedMember: thuong,
  );
  Comment thanhComment = Comment(
      postName: hungPost,
      commentPlot:
          'I cried alot when Will got his job at the bank, 10/10 movie',
      commentedMember: thanh);
  hungPost.addComment(hungComment);
  hungPost.addComment(thuongComment);
  hungPost.addComment(thanhComment);
  print("${hungPost.toString()}");
}
