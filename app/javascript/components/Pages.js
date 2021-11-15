// this compenent is responsible for render a list pages
// but starting simple

// import from react
import React from "react"

// a react component is just a function that returns JSX - (HTML embedded in JS)
const pages = (props) => {
  console.log("HERE!");
  console.log(props.pages)
  // we want to take this array of objects and convert it to an array of
  // jsx ideas if a method to use here
  const renderPages = () => {
    console.log("renderPages called");
  };

  return <p>Page Here: {renderPages()}</p>;
};

// export the component
export default Pages;