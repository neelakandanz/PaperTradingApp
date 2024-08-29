import 'package:flutter/material.dart';

class StockPage extends StatelessWidget {
  final List<Map<String, String>> stockList = [
    {"symbol": "AAPL", "company_name": "Apple Inc."},
    {"symbol": "MSFT", "company_name": "Microsoft Corporation"},
    {"symbol": "GOOGL", "company_name": "Alphabet Inc."},
    // Add more stocks if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock List'),
      ),
      body: ListView.builder(
        itemCount: stockList.length,
        itemBuilder: (context, index) {
          final stock = stockList[index];
          return ListTile(
            title: Text(stock['company_name'] ?? 'Unknown Company'),
            subtitle: Text(stock['symbol'] ?? 'Unknown Symbol'),
            leading: Icon(Icons.trending_up), // Icon to represent stock
            onTap: () {
              // Handle tap event if needed
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Tapped on ${stock['company_name']}'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
