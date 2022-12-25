import { Typography } from "@mui/material";
import React, { useState, useEffect } from "react";
import CustomTable from "../ui/CustomTable";
import { makeStyles } from "@mui/styles";
import { useHistory } from "react-router-dom";
import { getArticles } from "../../actions/actions";

const useStyles = makeStyles((theme) => ({
  container: {
    paddingTop: "100px",
    marginLeft: "18vw",
    width: "64%",
    display: "flex",
    flexDirection: "column",
    alignItems: "flex-start",
  },
}));

export default function ArticleList() {
  const classes = useStyles();
  const history = useHistory();
  const [data, setData] = useState([]);

  // formatting be response data
  useEffect(() => {
    async function fetchArticles() {
      const res = await getArticles();
      res.map((item) => {
        item.advertiser_id = item.advertiser.id;
        item.advertiser_name = item.advertiser.name;
        item.post_time =
          item.post_time.split("T")[0].replaceAll("-", "/") +
          " " +
          item.post_time.split("T")[1].slice(0, 5);
      });
      setData(res);
    }
    fetchArticles();
  }, []);

  const handleReadArticles = (id) => {
    history.push(`/articles/${id}`);
    window.location.reload();
  };

  return (
    <div className={classes.container}>
      <Typography variant="h3">Articles</Typography>
      <CustomTable
        data={data}
        columns={[
          {
            id: "title",
            label: "Title",
            minWidth: 200,
            width: 200,
            align: "center",
            type: "string",
          },
          {
            id: "advertiser_name",
            label: "Advertiser",
            minWidth: 150,
            width: 150,
            align: "center",
            type: "string",
          },
          {
            id: "post_time",
            label: "Post Time",
            minWidth: 200,
            width: 200,
            align: "center",
            type: "string",
          },
        ]}
        hasLink
        nextStep="readArticles"
        nextStepOnClick={(id) => handleReadArticles(id)}
      />
    </div>
  );
}
