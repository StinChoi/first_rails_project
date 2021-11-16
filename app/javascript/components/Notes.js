// Import from react
import React from "react"

// A react component is just a functin that return JSX - (html embeded in js)
const Notes = (props) => {
  console.log("HERE!");
  console.log(props.notes);
  // Want to take this array of objects and convert it to an array of jsx ideas if a method to use here

  const renderNotes = () => {
    console.log("renderPages called");
    return props.notes.map((note) => {
      return (
        <div>
          <h1>{note.title}</h1>
          <h3>{note.author}</h3>
          <p>{note.body}</p>
        </div>
      );
    });
  };
  return <p>Notes here: {renderNotes()}</p>;
};

export default Notes;

