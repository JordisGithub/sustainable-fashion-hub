import React from "react";
import { Link } from "react-router-dom";
import "./ShowBrands.css";

export default function ShowBrands(props) {
  return (
    <>
      <h3>Brands</h3>
      <div className="showbrands-wrapper">
        {props.brands.map((brand) => (
          <React.Fragment key={brand.id}>
            <Link className="brandslist-brand" to={`/brands/${brand.id}`}>
              {brand.name}
            </Link>
            <button
              className="brandslist-white-button"
              onClick={() => {
                props.history.push(`/brands/${brand.id}/edit`);
              }}
            >
              Edit
            </button>
            <button
              className="brandslist-white-button"
              onClick={() => {
                props.handleBrandDelete(brand.id);
              }}
            >
              Delete
            </button>
            <br />
          </React.Fragment>
        ))}
      </div>
      <Link to="/new/brands">
        <button className="brandslist-black-button">Add New Brand</button>
      </Link>
    </>
  );
}
