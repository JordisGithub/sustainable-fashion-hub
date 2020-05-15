import React from "react";

export default function ShowItems(props) {
  return (
    <div>
      <h3>All Clothing</h3>
      {props.items.map((item) => (
        <p key={item.id}>{item.name}</p>
      ))}
    </div>
  );
}

{
}
