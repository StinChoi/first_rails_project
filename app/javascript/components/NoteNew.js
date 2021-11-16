import React from "react";

const NoteNew = (props) => {
  return (
    <div>
      <h1>New Notes</h1>
      <form action="/notes" method="post">
        <p>Title</p>
        <input name="note[title]" />
        <p> Author </p>
        <input name="note[author]" />
        <p> Body </p>
        <textarea />
        <br />
        <button type="submit">add</button>
      </form>
    </div>
  );
};

export default NoteNew;