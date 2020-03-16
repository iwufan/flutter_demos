import 'package:flutter/material.dart';
import './message_data.dart';
import './message_item.dart';

class MessagePage extends StatefulWidget {
  @override
  MessagePageState createState() => MessagePageState();
}

class MessagePageState extends State<MessagePage> {

  static String yixiu = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339026077&di=c0598c61023cb64856440c13e61fd537&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%3D580%2Fsign%3D094490188813632715edc23ba18da056%2F5384d143ad4bd1136b6bbbf658afa40f4afb0564.jpg';
  static String dream = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339297115&di=7874554cafebec81f27cabd16ad32f09&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F8435e5dde71190ef8d5a2d50cb1b9d16fcfa6098.jpg';
  static String wukong = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339073286&di=c6a8a16a77c3c047c8c14a6543ee92fb&imgtype=0&src=http%3A%2F%2Fgss0.baidu.com%2F7Po3dSag_xI4khGko9WTAnF6hhy%2Fzhidao%2Fwh%253D450%252C600%2Fsign%3Dc30336901bd8bc3ec65d0eceb7bb8a28%2Fb3119313b07eca80cababa4d932397dda04483d9.jpg';
  static String wufan = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339525691&di=1108974a96d17c325a8c2c814480bf1d&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201304%2F01%2F20130401235446_zZCd3.thumb.400_0.jpeg';
  static String gui = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339560793&di=40d59c9592a55e54f8fb8c6ac51f858c&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fc%2F33%2F24bb1410635.jpg';
  static String kelin = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339606166&di=236d4f2e31e015b3508ead909399beac&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FXF9nONQrmHfu5InNnaXcF3cTCueqX0GncL4Ud0AKBDaTy1510428515395.jpg';
  static String telankesi = 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3257892292,227729917&fm=26&gp=0.jpg';
  static String yingmuhuadao = 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3899594504,375308572&fm=26&gp=0.jpg';
  static String qingzi = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339764189&di=a410663952267214f8dbca4e23e62b4d&imgtype=0&src=http%3A%2F%2Fimg.qqzhi.com%2Fuploads%2F2018-12-02%2F023004910.gif';
//  https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339764323&di=f52f030320adb91298a479d7659022e7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201605%2F25%2F20160525202344_AyWTF.jpeg
  static String liuchuanfeng = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339858942&di=3a66659722484425bb80b7943a47304e&imgtype=0&src=http%3A%2F%2Fwww.lovehhy.net%2Flib%2Fimg%2F5878315%2F877503_1811258329.jpg';
  static String xiongda = 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1338392476,3335405689&fm=26&gp=0.jpg';
  static String guangtouqiang = 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1639819923,3228355945&fm=26&gp=0.jpg';
  static String labixiaoxin = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339965695&di=65593b20730c992a0533537e590af84d&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201412%2F12%2F20141212124804_ukWLC.thumb.224_0.jpeg';
  static String daxiong = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584340029233&di=0ab46143ff33214831afd87d099180fd&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201409%2F25%2F20140925132115_yrR8V.jpeg';
  static String chaofan = 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1656835681,2944599915&fm=26&gp=0.jpg';
  static String mingren = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584340198424&di=e9bb86c448db2b374c5beda22b0e77d5&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fq_70%2Cc_zoom%2Cw_640%2Fupload%2F20161016%2F9242ef60d16e4fe0b11bfdfcc8270e06_th.jpg';
  static String lufei = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584340252137&di=af8ba8146e773cb05de40b275c08443b&imgtype=0&src=http%3A%2F%2Fp2.ssl.cdn.btime.com%2Ft01dfc4eb3214133aab.jpg%3Fsize%3D640x440';

  List<MessageModel> messageData = [
    MessageModel(yixiu, '一休哥', '突然想到的1', DateTime.now(), MessageType.CHAT),
    MessageModel(dream, '多拉a梦', '突然想到的2', DateTime.now(), MessageType.CHAT),
    MessageModel(wukong, '悟空', '突然想到的3', DateTime.now(), MessageType.CHAT),
    MessageModel(wufan, '悟饭', '突然想到的4', DateTime.now(), MessageType.CHAT),
    MessageModel(gui, '龟仙人', '突然想到的5', DateTime.now(), MessageType.CHAT),
    MessageModel(kelin, '克林', '突然想到的6突然想到的6突然想到的6突然想到的6突然想到的6', DateTime.now(), MessageType.CHAT),
    MessageModel(telankesi, '特兰克斯', '突然想到的7', DateTime.now(), MessageType.CHAT),
    MessageModel(yingmuhuadao, '樱木花道', '突然想到的8', DateTime.now(), MessageType.CHAT),
    MessageModel(qingzi, '晴子', '突然想到的9', DateTime.now(), MessageType.CHAT),
    MessageModel(liuchuanfeng, '流川枫', '突然想到的10', DateTime.now(), MessageType.CHAT),
    MessageModel(xiongda, '熊大', '突然想到的11', DateTime.now(), MessageType.CHAT),
    MessageModel(guangtouqiang, '光头强', '突然想到的12', DateTime.now(), MessageType.CHAT),
    MessageModel(labixiaoxin, '蜡笔小新', '突然想到的13', DateTime.now(), MessageType.CHAT),
    MessageModel(daxiong, '大雄', '突然想到的14', DateTime.now(), MessageType.CHAT),
    MessageModel(chaofan, '炒饭大王', '突然想到的15', DateTime.now(), MessageType.CHAT),
    MessageModel(mingren, '鸣人', '突然想到的16', DateTime.now(), MessageType.CHAT),
    MessageModel(lufei, '路飞', '突然想到的17', DateTime.now(), MessageType.CHAT),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: messageData.length,
          itemBuilder: (BuildContext context, int index){
            return MessageItem(messageData[index]);
          }
      ),
    );
  }
}

