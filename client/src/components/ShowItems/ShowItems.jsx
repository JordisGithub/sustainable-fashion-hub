import React from "react";
import "./ShowItems.css";
import "../BrandItem/BrandItem.css";

export default function ShowItems(props) {
  return (
    <>
      <h3>All Clothing</h3>
      <div className="products-display">
        {props.items.map((item) => (
          <div className="showitems-wrapper">
            <img src={item.pic1} />
            <div className="show-item-name">{item.product_name}</div>
            <div className="show-item-price">${item.price}</div>
          </div>
        ))}
      </div>
    </>
  );
}
