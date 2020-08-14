import React from "react";
import { Link } from "react-router-dom";
import "./Header.css";

export default function Header(props) {
  return (
    <header>
      <div className="hero-top">
        <Link
          className="site-logo"
          // style={{ paddingLeft: 13, textDecoration: "none" }}
          to="/"
        >
          <h1>Sustainably Chic</h1>
        </Link>

        <div className="user-display">
          {props.currentUser ? (
            <>
              <p>{props.currentUser.username}</p>
              <button onClick={props.handleLogout}>Logout</button>
            </>
          ) : (
            <Link to="/login">Login/Register</Link>
          )}
        </div>
      </div>

      <div className="header-links">
        {/* {props.currentUser && ( */}
        <>
          <Link className="header-links2" to="/brands">
            See All Scorecards
          </Link>
          <Link className="header-links2" to="/items">
            See All Clothing
          </Link>
          {/* <Link className="header-links2" to="/ratings">
            Ratings
          </Link> */}
          {/* <Link className="header-links2" to="/aboutus">
            About Us
          </Link> */}
        </>
        {/* )} */}
      </div>
    </header>
  );
}
