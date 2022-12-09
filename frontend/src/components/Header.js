import React from "react";
import AppBar from "@mui/material/AppBar";
import Box from "@mui/material/Box";
import Toolbar from "@mui/material/Toolbar";
import IconButton from "@mui/material/IconButton";
import Typography from "@mui/material/Typography";
import Menu from "@mui/material/Menu";
import MenuIcon from "@mui/icons-material/Menu";
import Container from "@mui/material/Container";
import Avatar from "@mui/material/Avatar";
import Button from "@mui/material/Button";
import Tooltip from "@mui/material/Tooltip";
import MenuItem from "@mui/material/MenuItem";
import AdbIcon from "@mui/icons-material/Adb";
import { makeStyles } from "@material-ui/core/styles";
import { useState, useEffect } from "react";
import { useHistory, useLocation } from "react-router-dom";

const pages = ["Products", "Pricing", "Blog"];

const useStyles = makeStyles((theme) => ({
  page: {
    paddingRight: "40px",
  },
  header: {
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
        text: "News",
        path: "/news",
      },
      {
        text: "My Reservation",
        path: "/my-reservation",
      },
    ]);
  }, []);
  return (
    <AppBar position="static">
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
