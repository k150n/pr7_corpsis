import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pr7_corpsis/models/cart.dart';
import 'package:pr7_corpsis/models/service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Каталог услуг'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ServiceCard(
            title: 'ПЦР-тест на определение РНК коронавируса',
            price: '1800 ₽',
            duration: '2 дня',
          ),
          ServiceCard(
            title: 'Клинический анализ крови с лейкоцитарной формулой',
            price: '690 ₽',
            duration: '1 день',
          ),
          ServiceCard(
            title: 'Биохимический анализ крови, базовый',
            price: '2440 ₽',
            duration: '1 день',
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String price;
  final String duration;

  ServiceCard({
    required this.title,
    required this.price,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white, // Белый фон
        borderRadius: BorderRadius.circular(8), // Закругленные углы
        border: Border.all(
          color: Colors.grey, // Серая окантовка
          width: 1, // Толщина окантовки
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 18)), // Название услуги
                Text(duration), // Длительность
                SizedBox(height: 4), // Отступ между строками
                Text(price, style: TextStyle(fontSize: 16)), // Цена услуги
              ],
            ),
          ),
          SizedBox(width: 16), // Отступ между текстом и кнопкой
          ElevatedButton(
            onPressed: () {
              final cart = Provider.of<Cart>(context, listen: false);
              final service = Service(title: title, price: price, duration: duration);
              cart.addItem(service);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Увеличиваем вертикальный отступ
              child: Text('Добавить'),
            ),
          ),
        ],
      ),
    );
  }
}
