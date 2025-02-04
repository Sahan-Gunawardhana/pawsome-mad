class Calculator{
  static double calculateTotalPrice(double productPrice){
    double taxAmount = productPrice * 0.2;
    double shippingCost = 400;
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }
}