import React from "react";
import AppBar from "@mui/material/AppBar";
import Toolbar from "@mui/material/Toolbar";
import Typography from "@mui/material/Typography";
import Container from "@mui/material/Container";
import AdbIcon from "@mui/icons-material/Adb";
import { makeStyles } from "@mui/styles";
import { useState, useEffect } from "react";
import { useHistory } from "react-router-dom";

const useStyles = makeStyles((theme) => ({
  page: {
    paddingRight: "40px",
  },
  header: {
    color: theme.palette.custom.main,
    display: "flex",
    flexDirection: "row",
    justifyContent: "space-between",
  },
  headerElement: {
    display: "flex",
    flexDirection: "row",
  },
}));

const Header = () => {
  const classes = useStyles();
  const history = useHistory();
  const [itemList, setItemList] = useState([]);

  useEffect(() => {
    setItemList([
      {
        text: "Consulation",
        path: "/consulation",
      },
      {
        text: "Articles",
        path: "/articles",
      },
      {
        text: "My Reservation",
        path: "/my-reservation",
      },
    ]);
  }, []);
  return (
    <AppBar position="static" style={{ backgroundColor: "#99A799" }}>
      <Container maxWidth="xl">
        <Toolbar disableGutters className={classes.header}>
          <div className={classes.headerElement}>
            <AdbIcon sx={{ display: { xs: "none", md: "flex" }, mr: 1 }} />
            <Typography variant="h6" className={classes.try}>
              GoldenGrandsons
            </Typography>
          </div>
          <div className={classes.headerElement}>
            {itemList.map((item, index) => (
              <Typography
                variant="h6"
                className={classes.page}
                onClick={() => {
                  history.push(item.path);
                  window.location.reload();
                }}
                key={item.text}
              >
                {item.text}
              </Typography>
            ))}
          </div>
        </Toolbar>
      </Container>
    </AppBar>
  );
};
export default Header;
