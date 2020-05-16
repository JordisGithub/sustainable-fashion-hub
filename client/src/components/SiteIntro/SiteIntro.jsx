import React from "react";
import "./SiteIntro.css";

function SiteIntro(props) {
  return (
    <>
      <div className="site-intro-header">
        Ethical brand ratings. There’s an app for that!
      </div>

      <div className="site-intro-container">
        <div className="site-intro-container">
          We rate the sustainability of your favorite brands!
        </div>

        <div className="site-intro-container">
          Our score rating model provides full transparency around the
          sustainability impact of your favorite brands. All brands on he
          platform are reviewed and signed scorecards.
        </div>
      </div>
    </>
  );
}

export default SiteIntro;
