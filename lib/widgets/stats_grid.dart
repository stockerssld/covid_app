import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stats_Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: [
          Flexible(
            child: Row(children: [
              _buildStatCard('TotalCases', '1.8M', Colors.orange),
              _buildStatCard('Deaths', '84K', Colors.red),
            ]),
          ),
          Flexible(
            child: Row(children: [
              _buildStatCard('Recovered', '31k', Colors.green),
              _buildStatCard('Active', '84K', Colors.lightBlue),
              _buildStatCard('Critical', 'N/A', Colors.purple),
            ]),
          )
        ],
      ),
    );
  }

  Expanded _buildStatCard(String title, String count, MaterialColor color) {
    return Expanded(
        child: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  count,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            )));
  }
}
