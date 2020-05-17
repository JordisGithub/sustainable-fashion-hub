import React, { Component } from "react";
import { getOneBrand } from "../../services/api-helper";

export default class UpdateBrand extends Component {
  state = {
    name: "",
    description: "",
    sustainability_rating: "",
    // added
    sustainability_rating_description: "",
    planet_rating: "",
    planet_rating_details: "",
    people_rating: "",
    people_rating_details: "",
    animals_rating: "",
    animals_rating_details: "",
  };

  handleChange = (e) => {
    const { name, value } = e.target;
    this.setState({
      [name]: value,
    });
  };

  componentDidMount() {
    this.setFormData();
  }

  setFormData = async () => {
    const brandItem = await getOneBrand(this.props.brandId);
    this.setState({
      name: brandItem.name,
      description: brandItem.description,
      sustainability_rating: brandItem.sustainability_rating,
      sustainability_rating_description:
        brandItem.sustainability_rating_description,
      planet_rating: brandItem.planet_rating,
      planet_rating_details: brandItem.planet_rating_details,
      people_rating: brandItem.people_rating,
      people_rating_details: brandItem.people_rating_details,
      animals_rating: brandItem.animals_rating,
      animals_rating_details: brandItem.animals_rating_details,
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
        <div className="updatebrands-wrapper">
          <label htmlFor="name">name:</label>
          <input
            id="name"
            type="text"
            name="name"
            value={this.state.name}
            onChange={this.handleChange}
          />

          <br />
          <label htmlFor="description">description:</label>
          <input
            id="description"
            type="text"
            name="description"
            value={this.state.description}
            onChange={this.handleChange}
          />

          <br />
          <label htmlFor="sustainability_rating">sustainability rating:</label>
          <input
            id="sustainability_rating"
            type="text"
            name="sustainability_rating"
            value={this.state.sustainability_rating}
            onChange={this.handleChange}
          />

          <br />
          <br />
          <label htmlFor="sustainability_rating_description">
            sustainability rating description:
          </label>
          <input
            id="sustainability_rating_description"
            type="text"
            name="sustainability_rating_description"
            value={this.state.sustainability_rating_description}
            onChange={this.handleChange}
          />

          {/* ============Added============= */}
          <br />
          <label htmlFor="planet_rating">planet rating:</label>
          <input
            id="planet_rating"
            type="text"
            name="planet_rating"
            value={this.state.planet_rating}
            onChange={this.handleChange}
          />

          <br />
          <label htmlFor="planet_rating_details">planet rating details:</label>
          <input
            id="planet_rating_details"
            type="text"
            name="planet_rating_details"
            value={this.state.planet_rating_details}
            onChange={this.handleChange}
          />

          <br />
          <label htmlFor="people_rating">people rating:</label>
          <input
            id="people_rating"
            type="text"
            name="people_rating"
            value={this.state.people_rating}
            onChange={this.handleChange}
          />

          <br />
          <label htmlFor="people_rating_details">people rating details:</label>
          <input
            id="people_rating_details"
            type="text"
            name="people_rating_details"
            value={this.state.people_rating_details}
            onChange={this.handleChange}
          />

          <br />
          <label htmlFor="animals_rating">animals rating:</label>
          <input
            id="animals_rating"
            type="text"
            name="animals_rating"
            value={this.state.animals_rating}
            onChange={this.handleChange}
          />

          <br />
          <label htmlFor="animals_rating_details">
            animals rating details:
          </label>
          <input
            id="animals_rating_details"
            type="text"
            name="animals_rating_details"
            value={this.state.animals_rating_details}
            onChange={this.handleChange}
          />
          <br />
        </div>
        <button className="updatebrands-black-button">Submit</button>
      </form>
    );
  }
}
