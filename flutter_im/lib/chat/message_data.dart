
enum MessageType {SYSTEM, PUBLIC, CHAT, GROUP}

class MessageModel {
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;

  MessageModel(this.avatar, this.title, this.subTitle, this.time, this.type);

//  List<MessageModel> messageData = [
//    MessageModel('', '一休哥', '突然想到的1', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '多拉a梦', '突然想到的2', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '悟空', '突然想到的3', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '悟饭', '突然想到的4', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '龟仙人', '突然想到的5', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '克林', '突然想到的6突然想到的6突然想到的6突然想到的6突然想到的6', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '特兰克斯', '突然想到的7', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '樱木花道', '突然想到的8', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '晴子', '突然想到的9', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '流川枫', '突然想到的10', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '熊大', '突然想到的11', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '光头强', '突然想到的12', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '蜡笔小新', '突然想到的13', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '大雄', '突然想到的14', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '炒饭大王', '突然想到的15', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '鸣人', '突然想到的16', DateTime.now(), MessageType.CHAT),
//    MessageModel('', '路飞', '突然想到的17', DateTime.now(), MessageType.CHAT),
//  ];

}
