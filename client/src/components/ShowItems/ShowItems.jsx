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
            <div>
              <img src={item.pic1} />
            </div>

            <div classname="show-item-text">
              {item.product_name} ${item.price}
            </div>
          </div>
        ))}
      </div>
    </>
  );
}
