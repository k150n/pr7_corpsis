import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Профиль'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Кирилл', style: TextStyle(fontSize: 24)),
            SizedBox(height: 8),
            Text('+7 929 576-37-44'),
            SizedBox(height: 8),
            Text('kison_nosik@mail.ru'),
            Divider(height: 32),
            ProfileOption(icon: Icons.list_alt, title: 'Мои заказы'),
            ProfileOption(icon: Icons.medical_services, title: 'Медицинские карты'),
            ProfileOption(icon: Icons.home, title: 'Мои адреса'),
            ProfileOption(icon: Icons.settings, title: 'Настройки'),
            Spacer(),
            Text('Ответы на вопросы'),
            Text('Политика конфиденциальности'),
            Text('Пользовательское соглашение'),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              child: Text('Выход', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;

  ProfileOption({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {},
    );
  }
}
