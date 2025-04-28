import React, { useState } from 'react';

function OrderForm() {
  const [productName, setProductName] = useState('');
  const [quantity, setQuantity] = useState(1);

  const handleOrderSubmit = async (e) => {
    e.preventDefault();

    // ⚡ Replace this with your ALB DNS
    const API_URL = "http://cloudnova-alb-1681081862.ap-south-1.elb.amazonaws.com/api/order";

    try {
      const response = await fetch(API_URL, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          product_name: productName,
          quantity: quantity,
        }),
      });

      if (!response.ok) {
        throw new Error('Network response was not ok');
      }

      const result = await response.json();
      alert(`Order Placed Successfully: ${JSON.stringify(result)}`);
    } catch (error) {
      console.error("Error placing order:", error);
      alert("Failed to place order. Please try again.");
    }
  };

  return (
    <div>
      <h2>🛒 Place an Order</h2>
      <form onSubmit={handleOrderSubmit}>
        <input
          type="text"
          placeholder="Product Name"
          value={productName}
          onChange={(e) => setProductName(e.target.value)}
          required
        />
        <input
          type="number"
          placeholder="Quantity"
          value={quantity}
          onChange={(e) => setQuantity(e.target.value)}
          min="1"
          required
        />
        <button type="submit">Order Now</button>
      </form>
    </div>
  );
}

export default OrderForm;

