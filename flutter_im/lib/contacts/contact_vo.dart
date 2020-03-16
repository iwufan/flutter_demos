
import 'package:flutter/cupertino.dart';

class ContactVO {

  String sectionKey;
  String name;
  String avatarUrl;

  ContactVO({@required this.sectionKey, this.name, this.avatarUrl});
}

 String yixiu1 = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339026077&di=c0598c61023cb64856440c13e61fd537&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%3D580%2Fsign%3D094490188813632715edc23ba18da056%2F5384d143ad4bd1136b6bbbf658afa40f4afb0564.jpg';
 String dream1 = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339297115&di=7874554cafebec81f27cabd16ad32f09&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F8435e5dde71190ef8d5a2d50cb1b9d16fcfa6098.jpg';
 String wukong1 = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339073286&di=c6a8a16a77c3c047c8c14a6543ee92fb&imgtype=0&src=http%3A%2F%2Fgss0.baidu.com%2F7Po3dSag_xI4khGko9WTAnF6hhy%2Fzhidao%2Fwh%253D450%252C600%2Fsign%3Dc30336901bd8bc3ec65d0eceb7bb8a28%2Fb3119313b07eca80cababa4d932397dda04483d9.jpg';
 String wufan1 = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339525691&di=1108974a96d17c325a8c2c814480bf1d&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201304%2F01%2F20130401235446_zZCd3.thumb.400_0.jpeg';
 String gui1 = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339560793&di=40d59c9592a55e54f8fb8c6ac51f858c&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fc%2F33%2F24bb1410635.jpg';
 String kelin1 = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339606166&di=236d4f2e31e015b3508ead909399beac&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FXF9nONQrmHfu5InNnaXcF3cTCueqX0GncL4Ud0AKBDaTy1510428515395.jpg';
 String telankesi1 = 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3257892292,227729917&fm=26&gp=0.jpg';
 String yingmuhuadao1 = 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3899594504,375308572&fm=26&gp=0.jpg';
 String qingzi1 = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339764189&di=a410663952267214f8dbca4e23e62b4d&imgtype=0&src=http%3A%2F%2Fimg.qqzhi.com%2Fuploads%2F2018-12-02%2F023004910.gif';
//  https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339764323&di=f52f030320adb91298a479d7659022e7&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201605%2F25%2F20160525202344_AyWTF.jpeg
 String liuchuanfeng1 = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584339858942&di=3a66659722484425bb80b7943a47304e&imgtype=0&src=http%3A%2F%2Fwww.lovehhy.net%2Flib%2Fimg%2F5878315%2F877503_1811258329.jpg';


List<ContactVO> contactData = [
  ContactVO(
      sectionKey: 'A',
      name: '一休',
      avatarUrl: yixiu1
  ),
  ContactVO(
      sectionKey: 'A',
      name: '张三2',
      avatarUrl: dream1
  ),
  ContactVO(
      sectionKey: 'B',
      name: '张三3',
      avatarUrl: wukong1
  ),
  ContactVO(
      sectionKey: 'B',
      name: '张三4',
      avatarUrl: wufan1
  ),
  ContactVO(
      sectionKey: 'B',
      name: '张三5',
      avatarUrl: gui1
  ),
  ContactVO(
      sectionKey: 'C',
      name: '张三6',
      avatarUrl: kelin1
  ),
  ContactVO(
      sectionKey: 'D',
      name: '张三7',
      avatarUrl: telankesi1
  ),
  ContactVO(
      sectionKey: 'D',
      name: '张三8',
      avatarUrl: yingmuhuadao1
  ),
  ContactVO(
      sectionKey: 'D',
      name: '张三9',
      avatarUrl: qingzi1
  ),
  ContactVO(
      sectionKey: 'D',
      name: '张三10',
      avatarUrl: liuchuanfeng1
  )
];