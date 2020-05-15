// import React, { Component } from "react";

// export default class CreateBrand extends Component {
//   state = {
//     name: "",
//   };

//   handleChange = (e) => {
//     const { value } = e.target;
//     this.setState({
//       name: value,
//     });
//   };

//   render() {
//     return (
//       <form
//         onSubmit={(e) => {
//           e.preventDefault();
//           this.props.handleBrandSubmit(this.state);
//           this.props.history.push("/brands");
//         }}
//       >
//         <h3>Create Brand</h3>
//         <input
//           type="text"
//           value={this.state.name}
//           onChange={this.handleChange}
//         />
//         <button>Submit</button>
//       </form>
//     );
//   }
// }
