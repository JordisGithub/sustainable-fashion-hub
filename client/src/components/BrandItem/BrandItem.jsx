import React, { Component } from "react";
import { getOneBrand, addItem } from "../../services/api-helper";

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
            <div>{brand.name}</div>
            <div> {brand.description}</div>
            <div className="sustainability-rating"></div>
            <div>sustainability rating breakdown:</div>

            {/* ======================================================
            ====================TABS=====================================
            ====================================================== */}

            <div class="tab">
              <button
                className={this.state.overall ? "active-menu" : "menu-title"}
                onClick={handleOverall}
              >
                Overal
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
            ===========TABBED RATINGS SECTION =================
            ====================================================== */}

            {this.state.overall && (
              <div id="overall" class="tablinks">
                <h3>Overall Rating</h3>
                <div>{brand.sustainability_rating}</div>
                <div>{brand.sustainability_rating_description}</div>
              </div>
            )}

            {this.state.animals && (
              <div id="animals" class="tablinks">
                <h3>Animals Rating</h3>
                <div>{brand.animals_rating}</div>
                <div>{brand.animals_rating_details}</div>
              </div>
            )}

            {this.state.planet && (
              <div id="planet" class="tablinks">
                <h3>Planet Rating</h3>
                <div>{brand.planet_rating}</div>
                <div>{brand.planet_rating_details}</div>
              </div>
            )}

            {this.state.people && (
              <div id="people" class="tablinks">
                <h3>People Rating</h3>
                <div>{brand.people_rating}</div>
                <div>{brand.people_rating_details}</div>
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
                  {item.product_name}
                </p>
              ))}
            </div>
          </>
        )}

        <form onSubmit={this.handleSubmit}>
          <button>Add a item</button>
        </form>
      </div>
    );
  }
}
