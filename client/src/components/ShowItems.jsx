import React from "react";
import { Link } from "react-router-dom";

export default function ShowItems(props) {
  return (
    <div>
      <h3>All Clothing</h3>
      {props.items.map((item) => (
        <p key={item.id}>{item.product_name}</p>
      ))}

      <Link to="/new/items">
        <button>Create</button>
      </Link>
    </div>
  );
}
