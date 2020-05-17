import React, { Component } from "react";
import "./CreateBrand.css";

export default class CreateBrand extends Component {
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

  render() {
    const {
      name,
      description,
      sustainability_rating,
      sustainability_rating_description,
      planet_rating,
      planet_rating_details,
      people_rating,
      people_rating_details,
      animals_rating,
      animals_rating_details,
    } = this.state;

    return (
      <form
        onSubmit={(e) => {
          e.preventDefault();
          this.props.handleBrandSubmit(this.state);
          this.props.history.push("/brands");
        }}
      >
        <h3>Create Brand</h3>
        <div className="createbrands-wrapper">
          <label htmlFor="name">name:</label>
          <input
            id="name"
            type="text"
            name="name"
            value={name}
            onChange={this.handleChange}
          />

          <label htmlFor="description">description:</label>
          <input
            id="description"
            type="text"
            name="description"
            value={description}
            onChange={this.handleChange}
          />

          <label htmlFor="sustainability_rating">sustainability rating:</label>
          <input
            id="sustainability_rating"
            type="text"
            name="sustainability_rating"
            value={sustainability_rating}
            onChange={this.handleChange}
          />

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

          <label htmlFor="planet_rating">planet rating:</label>
          <input
            id="planet_rating"
            type="text"
            name="planet_rating"
            value={planet_rating}
            onChange={this.handleChange}
          />

          <label htmlFor="planet_rating_details">planet rating details:</label>
          <input
            id="planet_rating_details"
            type="text"
            name="planet_rating_details"
            value={planet_rating_details}
            onChange={this.handleChange}
          />

          <label htmlFor="people_rating">people rating:</label>
          <input
            id="people_rating"
            type="text"
            name="people_rating"
            value={people_rating}
            onChange={this.handleChange}
          />

          <label htmlFor="people_rating_details">people rating details:</label>
          <input
            id="people_rating_details"
            type="text"
            name="people_rating_details"
            value={people_rating_details}
            onChange={this.handleChange}
          />

          <label htmlFor="animals_rating">animals rating:</label>
          <input
            id="animals_rating"
            type="text"
            name="animals_rating"
            value={animals_rating}
            onChange={this.handleChange}
          />

          <label htmlFor="animals_rating_details">
            animals rating details:
          </label>
          <input
            id="animals_rating_details"
            type="text"
            name="animals_rating_details"
            value={animals_rating_details}
            onChange={this.handleChange}
          />
        </div>
        <button className="createbrands-black-button">Submit</button>
      </form>
    );
  }
}
