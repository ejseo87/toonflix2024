import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String currencyName, currencyCode, currencyAmount;
  final IconData currencyIcon;
  final bool isInverted;
  final int order;

  final _blackColor = const Color(0xFF1F2123);
  final _whiteColor = const Color(0xFFFAFAFA);

  const CurrencyCard({
    super.key,
    required this.currencyName,
    required this.currencyCode,
    required this.currencyAmount,
    required this.currencyIcon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -20 * (order - 1)), //code challenge
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? _whiteColor : _blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currencyName,
                    style: TextStyle(
                      color: isInverted ? _blackColor : _whiteColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        currencyAmount,
                        style: TextStyle(
                          color: isInverted ? _blackColor : _whiteColor,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(currencyCode,
                          style: TextStyle(
                            color: isInverted
                                ? _blackColor
                                : _whiteColor.withOpacity(0.8),
                          )),
                    ],
                  ),
                ], //chidren of Column
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-5, 18),
                  child: Icon(
                    currencyIcon,
                    color:
                        isInverted ? _blackColor : _whiteColor.withOpacity(0.8),
                    size: 88,
                  ),
                ),
              ),
            ], // children of Row
          ),
        ),
      ),
    );
  }
}
