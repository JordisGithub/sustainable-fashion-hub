import React, { Component } from "react";
import { getOneBrand, addItem } from "../services/api-helper";

export default class brandItem extends Component {
  state = {
    brand: null,
    item: [],
  };

  setBrand = async () => {
    const brand = await getOneBrand(this.props.brandId);
    this.setState({ brand });
  };

  handleChange = (e) => {
    const { value } = e.target;
    this.setState({
      item: value,
    });
  };

  handleSubmit = async (e) => {
    e.preventDefault();
    const brand = await addItem(this.state.item, this.state.brand.id);
    this.setState({ brand });
  };

  componentDidMount() {
    this.setBrand();
    debugger;
  }

  render() {
    const { brand } = this.state;
    return (
      <div>
        {brand && (
          <>
            <h3>{brand.name}</h3>
            {brand.items.map((item) => (
              <p key={item.id}>{item.name}</p>
            ))}
          </>
        )}
        <form onSubmit={this.handleSubmit}>
          <select onChange={this.handleChange}>
            <option>--Select a item--</option>
            {this.state.items &&
              this.state.items.map((item) => (
                <option value={item.id} key={item.id}>
                  {item.name}
                </option>
              ))}
          </select>
          <button>Add a item</button>
        </form>
      </div>
    );
  }
}
