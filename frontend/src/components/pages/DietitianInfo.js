import React, { useEffect } from "react";
import { makeStyles } from "@mui/styles";
import {
  Typography,
  Divider,
  Dialog,
  DialogContent,
  DialogActions,
  Button,
} from "@mui/material";
import AlignedText from "../ui/AlignedText";

const useStyles = makeStyles((theme) => ({
  title: {
    marginBottom: "25px",
  },
}));

const data = [
  {
    id: 3,
    name: "jtc",
    work_unit: "RockClimbing Clinic",
    domain: "一般營養諮詢",
    available_time: ["2022/12/31 16:00-17:00", "2022/12/30 11:00-12:00"],
    gender: "female",
    introduction: "提供專業攀岩選手的最佳營養計畫",
    phone_number: "0907344689",
    link_id: "/dietitian/3",
  },
];

const displayedColumns = [
  { displayedName: "Name", key: "name" },
  { displayedName: "Work Unit", key: "work_unit" },
  { displayedName: "Domain", key: "domain" },
  { displayedName: "Available Time", key: "available_time" },
  { displayedName: "Gender", key: "gender" },
  { displayedName: "Introduction", key: "introduction" },
];

export default function DietitianInfo({
  showDialog,
  setShowDialog,
  onClickID,
}) {
  const classes = useStyles();
  // const [data, setData] = useState([]);
  // useEffect(() => {
  //   setData(getArticles()); //TODO
  // }, []);

  return (
    <Dialog open={showDialog} maxWidth="md" fullWidth={true}>
      <DialogContent sx={{ padding: "25px 30px" }}>
        <Typography variant="h4" className={classes.title}>
          Dietitian Information
        </Typography>
        {displayedColumns.map((col) => {
          if (col.key === "available_time") {
            return (
              <AlignedText text={col.displayedName} childrenType="text">
                <Typography variant="body1">
                  {data[0][col.key].join(", ")}
                </Typography>
              </AlignedText>
            );
          } else {
            return (
              <AlignedText text={col.displayedName} childrenType="text">
                <Typography variant="body1">{data[0][col.key]}</Typography>
              </AlignedText>
            );
          }
        })}
      </DialogContent>
      <DialogActions>
        <Button
          variant="contained"
          color="primary"
          onClick={() => setShowDialog(false)}
          disableElevation
        >
          Close
        </Button>
      </DialogActions>
    </Dialog>
  );
}
