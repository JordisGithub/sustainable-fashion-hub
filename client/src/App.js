// import React from 'react';
import React, { Component } from 'react'
import { withRouter } from 'react-router';
import './App.css'
import Header from './components/Header/Header';
import HowWeRate from './components/HowWeRate/HowWeRate'

// import ShowBrands from './components/ShowBrands'
import Main from './components/Main';
import {
  loginUser,
  registerUser,
  verifyUser,
  removeToken
} from './services/api-helper';



class App extends Component {
  state = {
    currentUser: null
  }

  componentDidMount() {
    this.confirmUser();
  }

  handleLogin = async (loginData) => {
    const currentUser = await loginUser(loginData);
    this.setState({ currentUser })
  }

  handleRegister = async (registerData) => {
    const currentUser = await registerUser(registerData);
    this.setState({ currentUser })
  }

  confirmUser = async () => {
    const currentUser = await verifyUser();
    this.setState({ currentUser })
  }

  handleLogout = () => {
    localStorage.clear();
    this.setState({
      currentUser: null
    })
    removeToken();
    this.props.history.push('/');
  }

  render() {
    return (

      <div className="App">
        <Header
          handleLogout={this.handleLogout}
          currentUser={this.state.currentUser}
        />

        <div>Ethical brand ratings. There’s an app for that.</div>
        <div>We rate the sustainability of your favorite brands!</div>

        <div>We also include a sustainability score rating model to rate the brands and provide
        full transparency around the sustainability impact and rating factors of your favorite
brands. All brands on he platform are reviewed and signed scorecards.</div>
        <HowWeRate />



        <Main
          handleRegister={this.handleRegister}
          handleLogin={this.handleLogin}
        />



      </div>
    )
  }
}

export default withRouter(App);