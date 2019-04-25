
class ChatModel {
  final String name;
  final String message;
  final String time;
  final String url;

  ChatModel({this.name, this.message, this.time, this.url});
}

List<ChatModel> chats = [
  ChatModel(
      name: 'Nitesh',
      message: 'Hi Nitesh Bye Nitesh',
      time: '21:30',
      url:
          'https://scontent.fccu3-1.fna.fbcdn.net/v/t1.0-9/49745649_1328473543962390_7967485095122567168_n.jpg?_nc_cat=108&_nc_ht=scontent.fccu3-1.fna&oh=aee275488b3ef69a015c5ec8302f5cc2&oe=5D39F161'),
  ChatModel(
      name: 'Debranjan',
      message: 'Berabi?',
      time: '20:36',
      url:
          'https://scontent.fccu3-1.fna.fbcdn.net/v/t1.0-9/26994047_968672363297653_7831005061873721464_n.jpg?_nc_cat=108&_nc_ht=scontent.fccu3-1.fna&oh=8daca80c2b1fc9133729fdf19e79723a&oe=5D2C338D'),
  ChatModel(
      name: 'Farakka Exp',
      message: 'call kor',
      time: '11:39',
      url:
          'https://scontent.fccu3-1.fna.fbcdn.net/v/t1.0-9/57550621_2610030059067187_8425314641642520576_n.jpg?_nc_cat=111&_nc_ht=scontent.fccu3-1.fna&oh=e191a273018217cebde7fe7214659033&oe=5D33A125'),
  ChatModel(
      name: 'Ankit Kundu',
      message: 'kothai re aati',
      time: '02:46',
      url:
          'https://scontent.fccu3-1.fna.fbcdn.net/v/t1.0-9/35067478_998370810321248_3560409420301074432_n.jpg?_nc_cat=110&_nc_ht=scontent.fccu3-1.fna&oh=62efe8976d1e2709ae2ec83a67e5e26b&oe=5D406A67'),
  
  ChatModel(
      name: 'Nazakat',
      message: 'Kamon',
      time: 'Yesterday',
      url:
          'https://pbs.twimg.com/profile_images/879559391678046208/FfUHO6Cs_400x400.jpg'),
  ChatModel(
      name: 'Dhiman',
      message: 'orom mone hoe',
      time: 'Yesterday',
      url:
          'https://scontent.fccu3-1.fna.fbcdn.net/v/t1.0-9/48976876_2220021111604126_7639935891103809536_n.jpg?_nc_cat=109&_nc_ht=scontent.fccu3-1.fna&oh=ec1bd0ea085134c2ac7f9b662904405f&oe=5D38CBFF'),
  ChatModel(
      name: 'Shuvam',
      message: 'Ajke Sikhabi?',
      time: 'Yesterday',
      url:
          'https://scontent.fccu3-1.fna.fbcdn.net/v/t1.0-9/26196376_1175140672619780_1335527665011940461_n.jpg?_nc_cat=111&_nc_ht=scontent.fccu3-1.fna&oh=75cb28336801142d05f00e91027d71ae&oe=5D6AE0DC'),
  ChatModel(
      name: 'Baccha',
      message: 'Suppressor acche?',
      time: '23/04/2019',
      url:
          'https://scontent.fccu3-1.fna.fbcdn.net/v/t1.0-9/56571923_999983806865221_2173490753014071296_n.jpg?_nc_cat=108&_nc_ht=scontent.fccu3-1.fna&oh=904c0c0220fb62b0db8331fb37fca914&oe=5D34E47C'),
  ChatModel(
      name: 'Rajdip',
      message: 'Biscuit niye asis.',
      time: '23/04/2019',
      url:
          'https://scontent.fccu3-1.fna.fbcdn.net/v/t1.0-9/54350934_2211441439173927_1504961806148304896_n.jpg?_nc_cat=107&_nc_ht=scontent.fccu3-1.fna&oh=8b4b67643282252a88872c2682fc68ab&oe=5D3607AC'),
  ChatModel(
      name: 'Jazz',
      message: 'Season 6 mast tha',
      time: '23/04/2019',
      url:
          'https://scontent.fccu3-1.fna.fbcdn.net/v/t1.0-9/57049147_1443218062477723_5965925606704021504_n.jpg?_nc_cat=100&_nc_ht=scontent.fccu3-1.fna&oh=70f9cb0b190e63b68cd8246584edd35e&oe=5D70C2D4'),
  ChatModel(
      name: 'Ibtesam',
      message: 'yeh dekh',
      time: '22/04/2019',
      url:
          'https://scontent.fccu3-1.fna.fbcdn.net/v/t1.0-9/54519635_560141814495718_5889458992513548288_n.jpg?_nc_cat=106&_nc_ht=scontent.fccu3-1.fna&oh=84cfcc2eeca7b43a0afcac7938eb3ac9&oe=5D3AAB87'),
  ChatModel(
      name: 'Avik',
      message: 'kothai re?',
      time: '22/04/2019',
      url:
          'https://scontent.fccu3-1.fna.fbcdn.net/v/t1.0-9/56537449_2169948623130913_4764754216155611136_n.jpg?_nc_cat=106&_nc_ht=scontent.fccu3-1.fna&oh=e9c1ba2da928e7047930e634714fddc1&oe=5D6FFE93'),
  ChatModel(
      name: 'Kunal Maheshwari',
      message: 'Episode 3 Leaked bhai',
      time: '20/04/2019',
      url:
          'https://scontent.fccu3-1.fna.fbcdn.net/v/t1.0-9/21762078_1392457120809131_7729868867888485531_n.jpg?_nc_cat=110&_nc_ht=scontent.fccu3-1.fna&oh=802146ab010dbcc8f195dc2fe8e5eb5d&oe=5D39E7FC'),
  ChatModel(
      name: 'Ankur',
      message: 'Bhai bata kuch.',
      time: '20/04/2019',
      url:
          'https://scontent.fccu3-1.fna.fbcdn.net/v/t1.0-9/18671181_814148252065974_4567612428439215048_n.jpg?_nc_cat=107&_nc_ht=scontent.fccu3-1.fna&oh=d8213f8d75dcf83ca3c4aab399f002a1&oe=5D6C95A9'),
];
