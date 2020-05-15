import React from "react";
import { Link } from "react-router-dom";

export default function Header(props) {
  return (
    <header>
      <h1>Fashion APP</h1>

      {props.currentUser ? (
        <>
          <p>{props.currentUser.username}</p>
          <button onClick={props.handleLogout}>Logout</button>
        </>
      ) : (
        <Link to="/login">Login/Register</Link>
      )}

      <hr />

      {/* {
        props.currentUser
        &&
        <> */}

      <Link to="/brands">See All Brands</Link>
      <Link to="/items">See All Clothing</Link>

      {/* <hr />
      </>
        } */}
    </header>
  );
}
