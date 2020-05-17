import React, { Component } from "react";
import { Route } from "react-router-dom";

import Login from "../components/Login/Login";
import Register from "../components/Register/Register";
import {
  getAllItems,
  getAllBrands,
  postBrand,
  putBrand,
  destroyBrand,
} from "../services/api-helper";
import ShowItems from "../components/ShowItems/ShowItems";
import ShowBrands from "../components/ShowBrands/ShowBrands";
import CreateBrand from "../components/CreateBrand/CreateBrand";
import BrandItem from "../components/BrandItem/BrandItem";

// import UpdateBrand from "../components/UpdateBrand";
import "../components/UpdateBrand/UpdateBrand.css";

import UpdateBrand from "../components/UpdateBrand/UpdateBrand.jsx";

export default class Main extends Component {
  state = {
    items: [],
    brands: [],
  };

  componentDidMount() {
    this.readAllItems();
    this.readAllBrands();
  }

  readAllItems = async () => {
    const items = await getAllItems();
    this.setState({ items });
  };

  readAllBrands = async () => {
    const brands = await getAllBrands();
    this.setState({ brands });
  };

  handleBrandSubmit = async (brandData) => {
    const newBrand = await postBrand(brandData);
    this.setState((prevState) => ({
      brands: [...prevState.brands, newBrand],
    }));
  };

  handleBrandUpdate = async (id, brandData) => {
    const updatedBrand = await putBrand(id, brandData);
    this.setState((prevState) => ({
      brands: prevState.brands.map((brand) => {
        return brand.id === id ? updatedBrand : brand;
      }),
    }));
  };

  handleBrandDelete = async (id) => {
    await destroyBrand(id);
    this.setState((prevState) => ({
      brands: prevState.brands.filter((brand) => {
        return brand.id !== id;
      }),
    }));
  };

  render() {
    return (
      <main>
        <Route
          exact
          path="/login"
          render={(props) => (
            <Login {...props} handleLogin={this.props.handleLogin} />
          )}
        />

        <Route
          exact
          path="/register"
          render={(props) => (
            <Register {...props} handleRegister={this.props.handleRegister} />
          )}
        />

        <Route
          exact
          path="/items"
          render={() => <ShowItems items={this.state.items} />}
        />
        <Route
          exact
          path="/brands"
          render={(props) => (
            <ShowBrands
              {...props}
              handleBrandDelete={this.handleBrandDelete}
              brands={this.state.brands}
            />
          )}
        />
        <Route
          exact
          path="/new/brands"
          render={(props) => (
            <CreateBrand
              {...props}
              handleBrandSubmit={this.handleBrandSubmit}
            />
          )}
        />
        <Route
          exact
          path="/brands/:id/edit"
          render={(props) => {
            const { id } = props.match.params;
            return (
              <UpdateBrand
                {...props}
                handleBrandUpdate={this.handleBrandUpdate}
                brandId={id}
              />
            );
          }}
        />
        <Route
          exact
          path="/brands/:id"
          render={(props) => {
            const { id } = props.match.params;
            return <BrandItem brandId={id} brands={this.state.brands} />;
          }}
        />
      </main>
    );
  }
}
