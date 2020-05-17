import React from "react";
import { Link } from "react-router-dom";
import "./ShowItems.css";
import "../BrandItem/BrandItem.css";

export default function ShowItems(props) {
  return (
    <>
      <h3>All Clothing</h3>
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
    </>
  );
}
