class MessageModel{
  String?message;
  String?image;
  bool isSender;

  MessageModel({this.isSender = true, this.image, this.message});
}