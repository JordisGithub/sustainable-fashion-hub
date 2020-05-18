import React from "react";
import { Link } from "react-router-dom";
import "./MainPageBrandsSection.css";

function MainPageBrandsSection(props) {
  return (
    <>
      <div className="brands-container-wrapper">
        <div className="brands-container-header">Brand Scorecards</div>
        <div className="main-page-brands-container">
          <Link className="brands-container-photo1" to="/brands/30"></Link>
          <Link className="brands-container-photo2" to="/brands/27"></Link>
          <Link className="brands-container-photo3" to="/brands/26"></Link>
          <Link className="brands-container-photo4" to="/brands/31"></Link>

          <span className="brands-container-Title">
            COMMES DES GARCONS PLAY
          </span>
          <span className="brands-container-Title">STELLA MCCARTHY</span>
          <span className="brands-container-Title">BURBERRY CONSCIOUS</span>
          <span className="brands-container-Title">VERSACE</span>
        </div>
        {/* <button className="brands-button">
          <a className="brands-button-link" href="/brands" target="_blank">
            View All
          </a>
        </button> */}

        <Link className="brands-button" to="/brands">
          See All Brands
        </Link>
      </div>
    </>
  );
}

export default MainPageBrandsSection;
