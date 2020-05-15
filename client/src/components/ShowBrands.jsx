// import React from "react";
// import { Link } from "react-router-dom";

// export default function ShowBrands(props) {
//   return (
//     <div>
//       <h3>Brands</h3>
//       {props.brands.map((brand) => (
//         <React.Fragment key={brand.id}>
//           <Link to={`/brands/${brand.id}`}>{brand.name}</Link>
//           <button
//             onClick={() => {
//               props.history.push(`/brands/${brand.id}/edit`);
//             }}
//           >
//             Edit
//           </button>
//           <button
//             onClick={() => {
//               props.handleBrandDelete(brand.id);
//             }}
//           >
//             Delete
//           </button>
//           <br />
//         </React.Fragment>
//       ))}
//       <Link to="/new/brands">
//         <button>Create</button>
//       </Link>
//     </div>
//   );
// }
