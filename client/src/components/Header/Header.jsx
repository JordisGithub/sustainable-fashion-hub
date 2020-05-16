import React from "react";
import { Link } from "react-router-dom";
import "./Header.css";

export default function Header(props) {
  return (
    <header>
      <div className="hero-top">
        <h1>Sustainably Chic</h1>

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
        {props.currentUser && (
          <>
            <Link
              style={{ paddingLeft: 13, textDecoration: "none" }}
              to="/brands"
            >
              See All Brands
            </Link>
            <Link to="/items">See All Clothing</Link>
            <Link to="/ratings">Ratings</Link>
            <Link to="/aboutus">About Us</Link>
          </>
        )}
      </div>
    </header>
  );
}
