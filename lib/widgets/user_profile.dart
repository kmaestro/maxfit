import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final List<MenuRowData> firstMenuRow = [
    MenuRowData(Icons.favorite_outline, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Папка с чатом'),
  ];

  final List<MenuRowData> secondMenuRow = [
    MenuRowData(Icons.notifications, 'Уведомление и звук'),
    MenuRowData(Icons.privacy_tip, 'Конфидицальность'),
    MenuRowData(Icons.date_range, 'Данные и память'),
    MenuRowData(Icons.brush, 'Оформление'),
    MenuRowData(Icons.language, 'Язык'),
  ];

  UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            const _UserInfo(),
            const SizedBox(height: 30),
            _MenuWidget(
              menuRow: firstMenuRow,
            ),
            const SizedBox(height: 30),
            _MenuWidget(
              menuRow: secondMenuRow,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _MenuWidget extends StatelessWidget {
  List<MenuRowData> menuRow;

  _MenuWidget({
    Key? key,
    required this.menuRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuWidgetRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(data.icon),
          const SizedBox(width: 15),
          Expanded(child: Text(data.text)),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 20),
            const _AvatarWidget(),
            const SizedBox(height: 30),
            const _UserNameWidget(),
            const SizedBox(height: 10),
            const _UserPhoneWidget(),
            const SizedBox(height: 10),
            const _UserNickNameWidget(),
          ],
        ),
      ),
      const Positioned(
        top: 25,
        right: 25,
        child: Text(
          'Изм.',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 17,
          ),
        ),
      )
    ]);
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: const Placeholder());
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Nickname',
      style: TextStyle(color: Colors.black, fontSize: 25),
    );
  }
}

class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@nick',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+7(999)123 32 12',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
