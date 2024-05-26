import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
  const ShoppingCartButton({super.key});

  @override
  State<ShoppingCartButton> createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Cart Button Animation"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 800),
            height: 70,
            width: isExpanded ? 220 : 90,
            decoration: BoxDecoration(
              color: isExpanded ? Colors.green : Colors.purpleAccent,
              borderRadius: BorderRadius.circular(isExpanded ? 50 : 10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(isExpanded) const SizedBox(width: 25),
                Icon(
                  isExpanded ? Icons.check : Icons.shopping_cart,
                  size: 30,
                  color: Colors.white,
                ),
                // for space between add to cart text and icon
               if (isExpanded) const SizedBox(width: 5),
                // for text  in check icon only
                if (isExpanded)
                  const Expanded(
                    child: Text(
                      "Add to Cart",
                      maxLines: 1,
                      style: TextStyle(
                        
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
