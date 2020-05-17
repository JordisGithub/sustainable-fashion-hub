import React, { Component } from "react";
import { getOneBrand } from "../../services/api-helper";

export default class UpdateBrand extends Component {
  state = {
    name: "",
  };

  handleChange = (e) => {
    const { value } = e.target;
    this.setState({
      name: value,
    });
  };

  componentDidMount() {
    this.setFormData();
  }

  setFormData = async () => {
    const brandItem = await getOneBrand(this.props.brandId);
    this.setState({
      name: brandItem.name,
    });
  };

  render() {
    return (
      <form
        onSubmit={(e) => {
          e.preventDefault();
          this.props.handleBrandUpdate(this.props.brandId, this.state);
          this.props.history.push("/brands");
        }}
      >
        <h3>Update Brand</h3>
        <input
          type="text"
          value={this.state.name}
          onChange={this.handleChange}
        />
        <button>Submit</button>
      </form>
    );
  }
}
