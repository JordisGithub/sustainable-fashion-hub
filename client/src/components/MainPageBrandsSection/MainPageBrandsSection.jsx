import React from "react";
import "./MainPageBrandsSection.css";

function MainPageBrandsSection(props) {
  return (
    <>
      <div className="brands-container-wrapper">
        <div className="brands-container-header">Brand Scorecards</div>
        <div className="main-page-brands-container">
          <div className="brands-container-photo1"></div>
          <div className="brands-container-photo2"></div>
          <div className="brands-container-photo3"></div>
          <div className="brands-container-photo4"></div>
          <span className="brands-container-Title">
            COMMES DES GARCONS PLAY
          </span>
          <span className="brands-container-Title">STELLA MCCARTHY</span>
          <span className="brands-container-Title">BURBERRY CONSCIOUS</span>
          <span className="brands-container-Title">VERSACE</span>
        </div>
        <button className="brands-button">
          <a href="/brands" target="_blank">
            View All
          </a>
        </button>
      </div>
    </>
  );
}

export default MainPageBrandsSection;
