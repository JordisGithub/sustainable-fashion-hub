import React, { Component } from "react";
import { getOneBrand, addItem } from "../../services/api-helper";
import "./BrandItem.css";
import { Link } from "react-router-dom";

export default class brandItem extends Component {
  state = {
    brand: null,
  };

  state = {
    overall: true,
    animals: false,
    planet: false,
    people: false,
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
    // debugger;
  }

  render() {
    const { brand } = this.state;
    // const { items } = this.state.brand.items;

    const handleOverall = () => {
      this.setState({
        overall: true,
        animals: false,
        planet: false,
        people: false,
      });
    };

    const handleAnimals = () => {
      this.setState({
        overall: false,
        animals: true,
        planet: false,
        people: false,
      });
    };

    const handlePeople = () => {
      this.setState({
        overall: false,
        animals: false,
        planet: false,
        people: true,
      });
    };

    const handlePlanet = () => {
      this.setState({
        overall: false,
        animals: false,
        planet: true,
        people: false,
      });
    };

    return (
      <div>
        {brand && (
          <>
            <div className="brand-intro">
              <div className="brand-heading">{brand.name}</div>
              <div className="brand-description"> {brand.description}</div>
            </div>
            {/* <div>sustainability rating breakdown:</div> */}

            {/* ======================================================
            ====================TABS=====================================
            ====================================================== */}

            <div class="tab">
              <button
                className={this.state.overall ? "active-menu" : "menu-title"}
                onClick={handleOverall}
              >
                Overall Rating
              </button>

              <button
                className={this.state.animals ? "active-menu" : "menu-title"}
                onClick={handleAnimals}
              >
                Animals
              </button>

              <button
                className={this.state.planet ? "active-menu" : "menu-title"}
                onClick={handlePlanet}
              >
                Planet
              </button>

              <button
                className={this.state.people ? "active-menu" : "menu-title"}
                onClick={handlePeople}
              >
                People
              </button>
            </div>

            {/* ======================================================
            ===========TABBED CONTENT RATINGS SECTION =================
            ====================================================== */}

            {this.state.overall && (
              <div id="overall" class="tablinks">
                <div className="rating-results">
                  <h3>Overall Rating: </h3>
                  <h3 className="rating-number">
                    {brand.sustainability_rating}
                  </h3>
                </div>

                <div className="rating-description-section">
                  {brand.sustainability_rating_description}
                </div>
              </div>
            )}

            {this.state.animals && (
              <div id="animals" class="tablinks">
                <div className="rating-results">
                  <h3>Animals Rating</h3>
                  <h3 className="rating-number">{brand.animals_rating} </h3>
                </div>

                <div className="rating-description-section">
                  {brand.animals_rating_details}
                </div>
              </div>
            )}

            {this.state.planet && (
              <div id="planet" class="tablinks">
                <div className="rating-results">
                  <h3>Planet Rating</h3>
                  <h3 className="rating-number">{brand.planet_rating}</h3>
                </div>

                <div className="rating-description-section">
                  {brand.planet_rating_details}
                </div>
              </div>
            )}

            {this.state.people && (
              <div id="people" class="tablinks">
                <div className="rating-results">
                  <h3>People Rating</h3>
                  <h3 className="rating-number">{brand.people_rating}</h3>
                </div>

                <div className="rating-description-section">
                  {brand.people_rating_details}
                </div>
              </div>
            )}

            {/* ======================================================
            ===========BRAND Items Section SECTION =================
            ====================================================== */}

            <div className="brand-products-wrapper">
              {brand.items.map((item) => (
                <p key={item.id}>
                  {" "}
                  <img src={item.pic1} alt="" />
                  <div className="brand-products-item-name">
                    {item.product_name}
                  </div>
                </p>
              ))}
            </div>
          </>
        )}

        {/* <form onSubmit={this.handleSubmit}>
          <button>Add a item</button>
        </form> */}
        {/* <Link to="/new/brands">
          <button className="branditem-button">Create</button>
        </Link> */}
      </div>
    );
  }
}
