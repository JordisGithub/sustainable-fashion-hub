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

    // handleOverall = () => {
    //   this.setState({
    //     overall: true,
    //     animals: false,
    //     planet: false,
    //     people: false
    //   });
    // };

    // handleAnimals = () => {
    //   this.setState({
    //     overall: false,
    //     animals: true,
    //     planet: false,
    //     people: false
    //   });

    //   handlePeople = () => {
    //     this.setState({
    //       overall: false,
    //       animals: false,
    //       planet: true,
    //       people: false
    //     });

    //     handlePlanet = () => {
    //       this.setState({
    //         overall: true,
    //         animals: false,
    //         planet: false,
    //         people: true
    //       });

    return (
      <div>
        {brand && (
          <>
            <div>{brand.name}</div>
            <div>sustainability rating: {brand.sustainability_rating}</div>
            <div className="sustainability-rating"></div>
            <div>sustainability rating breakdown:</div>

            {/* ======================================================
            ====================TABS=====================================
            ====================================================== */}

            <div class="tab">
              <button
                className={this.state.overall ? "active-menu" : "menu-title"}
                onclick={this.handleOverall}
              >
                Overal
              </button>
              <button
                className={this.state.animals ? "active-menu" : "menu-title"}
                onclick={this.animals}
              >
                Animals
              </button>
              <button
                className={this.state.animals ? "active-menu" : "menu-title"}
                onclick={this.animals}
              >
                Planet
              </button>
              <button
                className={this.state.animals ? "active-menu" : "menu-title"}
                onclick={this.animals}
              >
                People
              </button>
            </div>

            {/* ======================================================
            ===========TABBED RATINGS SECTION =================
            ====================================================== */}
            <div id="Overall" class="tablinks">
              <div>{brand.sustainability_rating_description}</div>
            </div>

            <div id="Animals" class="tablinks">
              <h3>Animals Rating</h3>
              <div>{brand.animals_rating}</div>
              <div>{brand.animals_rating_details}</div>
            </div>

            <div id="Planet" class="tablinks">
              <h3>Planet Rating</h3>
              <div>{brand.planet_rating}</div>
              <div>{brand.planet_rating_details}</div>
            </div>

            <div id="People" class="tablinks">
              <h3>People Rating</h3>
              <div>{brand.people_rating}</div>
              <div>{brand.people_rating_details}</div>
            </div>

            {/* ======================================================
            ===========BRAND Items Section SECTION =================
            ====================================================== */}

            <div className="brand-products-wrapper">
              {brand.items.map((item) => (
                <p key={item.id}>{item.product_name}</p>
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
