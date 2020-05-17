import React, { Component } from "react";

export default class Register extends Component {
  state = {
    username: "",
    brand: "",
    name: "",
    email: "",
    phone: "",
    password: "",
  };

  handleChange = (e) => {
    const { name, value } = e.target;
    this.setState({
      [name]: value,
    });
  };

  render() {
    const { username, brand, name, email, phone, password } = this.state;
    return (
      <form
        onSubmit={(e) => {
          e.preventDefault();
          this.props.handleRegister(this.state);
          this.props.history.push("/");
        }}
      >
        <div className="login-wrapper">
          <h3>Register</h3>
          <label htmlFor="username">username:</label>
          <input
            id="username"
            type="text"
            name="username"
            value={username}
            onChange={this.handleChange}
          />
          <br />

          <label htmlFor="brand">brand:</label>
          <input
            id="brand"
            type="text"
            name="brand"
            value={brand}
            onChange={this.handleChange}
          />
          <br />

          <label htmlFor="name">name:</label>
          <input
            id="name"
            type="text"
            name="name"
            value={name}
            onChange={this.handleChange}
          />
          <br />

          <label htmlFor="email">email:</label>
          <input
            id="email"
            type="text"
            name="email"
            value={email}
            onChange={this.handleChange}
          />
          <br />

          <label htmlFor="phone">phone:</label>
          <input
            id="phone"
            type="text"
            name="phone"
            value={phone}
            onChange={this.handleChange}
          />
          <br />

          <label htmlFor="password">password:</label>
          <input
            id="password"
            type="password"
            name="password"
            value={password}
            onChange={this.handleChange}
          />
          <br />
          <button className="black-button">Submit</button>
        </div>
      </form>
    );
  }
}
