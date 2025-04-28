import React, { useState } from 'react';

function UserLogin() {
  const [username, setUsername] = useState('');

  const handleLogin = (e) => {
    e.preventDefault();
    alert(`Welcome ${username}!`);
  };

  return (
    <section style={{ padding: '20px' }}>
      <h2>👤 User Login</h2>
      <form onSubmit={handleLogin}>
        <div>
          <input
            type="text"
            placeholder="Username"
            value={username}
            onChange={(e) => setUsername(e.target.value)}
            required
          />
        </div>
        <button style={{ marginTop: '10px' }} type="submit">Login</button>
      </form>
    </section>
  );
}

export default UserLogin;
