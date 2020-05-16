import React from "react";
import "./HowWeRate.css";

function HowWeRate(props) {
  return (
    <>
      <div className="how-we-rate-header">How We Rate</div>
      <div className="how-we-rate-container">
        <div className="how-we-rate-photo1"></div>
        <div className="how-we-rate-photo2"></div>
        <div className="how-we-rate-photo3"></div>
        <span className="photo-Title">PLANET</span>
        <span className="photo-Title">PEOPLE</span>
        <span className="photo-Title">ANIMALS</span>
      </div>
    </>
  );
}

export default HowWeRate;
