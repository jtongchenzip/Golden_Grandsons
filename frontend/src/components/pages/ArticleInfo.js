import React, { useEffect } from "react";
import { useParams } from "react-router-dom";

export default function ArticleInfo() {
  const { id } = useParams(); // id for article

  useEffect(() => {
    console.log("article id", id);
  });
  return (
    <div>
      <div>Article info</div>
    </div>
  );
}
