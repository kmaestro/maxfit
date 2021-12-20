import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const _AvatarWidget(),
            const SizedBox(
              height: 30,
            ),
            const _UserNameWidget(),
            const SizedBox(
              height: 10,
            ),
            const _UserPhoneWidget(),
            const SizedBox(
              height: 10,
            ),
            const _UserNickNameWidget(),
          ],
        ),
      ),
    );
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
    return const Text('Nickname', style: TextStyle(color: Colors.black, fontSize: 25),);
  }
}

class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('@nick');
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('+7(999)123 32 12');
  }
}
