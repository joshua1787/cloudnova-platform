import React from 'react';

function ProductList() {
  const products = [
    { id: 1, name: "Cloud Storage 50GB", price: "$5" },
    { id: 2, name: "Compute EC2 Medium", price: "$15" },
    { id: 3, name: "Database Aurora Basic", price: "$20" }
  ];

  return (
    <section style={{ padding: '20px' }}>
      <h2>🛒 Products</h2>
      <ul>
        {products.map(product => (
          <li key={product.id}>
            {product.name} - <strong>{product.price}</strong>
          </li>
        ))}
      </ul>
    </section>
  );
}

export default ProductList;
