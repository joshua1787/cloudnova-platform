import React from 'react';
import Header from './components/Header';
import ProductList from './components/ProductList';
import OrderForm from './components/OrderForm';
import UserLogin from './components/UserLogin';

function App() {
  return (
    <div>
      <Header />
      <UserLogin />
      <ProductList />
      <OrderForm />
    </div>
  );
}

export default App;
