import React, { Component } from "react";
import { Link } from "react-router-dom";
import "./Login.css";

export default class Login extends Component {
  state = {
    username: "",
    password: "",
  };

  handleChange = (e) => {
    const { name, value } = e.target;
    this.setState({
      [name]: value,
    });
  };

  render() {
    const { username, password } = this.state;
    return (
      <form
        onSubmit={(e) => {
          e.preventDefault();
          this.props.handleLogin(this.state);
          this.props.history.push("/");
        }}
      >
        <div className="login-wrapper">
          <h3>Login</h3>

          <div classname="login-from-label">
            <label htmlFor="username">username:</label>
            <input
              id="username"
              type="text"
              name="username"
              value={username}
              onChange={this.handleChange}
            />
          </div>

          <div classname="login-from-label">
            <label htmlFor="password">password:</label>
            <input
              classname="input"
              id="password"
              type="password"
              name="password"
              value={password}
              onChange={this.handleChange}
            />
          </div>

          <button className="black-button">Submit</button>

          <h3>Not registered?</h3>
          <Link className="white-button" to="/register">
            Register Now
          </Link>
        </div>
      </form>
    );
  }
}
