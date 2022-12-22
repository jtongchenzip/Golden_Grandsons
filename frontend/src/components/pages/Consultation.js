import {
  Typography,
  Dialog,
  DialogContent,
  DialogActions,
  DialogTitle,
  Button,
} from "@mui/material";
import React, { useState, useEffect } from "react";
import CustomTable from "../ui/CustomTable";
import { makeStyles } from "@mui/styles";

// import Icon from "./icon/index";

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

const data = [
  {
    name: "erica",
    work_unit: "Cornelia Clinic",
    domain: "臨床營養",
    available_time: ["10/12 10:00", "10/17 12:00"],
    gender: "female",
    introduction: "10 年臨床營養經驗",
    phone_number: "0988422531",
  },
  {
    name: "amber",
    work_unit: "Amber Clinic",
    domain: "孕期營養",
    available_time: ["10/13 20:00", "10/14 09:00"],
    gender: "female",
    introduction: "接生過 1000 名嬰兒",
    phone_number: "0914566097",
  },
  {
    name: "jtc",
    work_unit: "RockClimbing Clinic",
    domain: "一般營養諮詢",
    available_time: ["10/11 16:00", "10/12 11:00"],
    gender: "female",
    introduction: "提供專業攀岩選手的最佳營養計畫",
    phone_number: "0907344689",
  },
];

export default function Consulation() {
  const classes = useStyles();
  const [showReserveDialog, setShowReserveDialog] = useState(false);

  const handleReserve = () => {
    setShowReserveDialog(true);
  };

  const handleSubmitReserve = () => {
    setShowReserveDialog(false);
  };

  return (
    <div className={classes.container}>
      <Typography variant="h3">Consulation</Typography>
      <CustomTable
        data={data}
        columns={[
          {
            id: "name",
            label: "Name",
            minWidth: 100,
            width: 100,
            align: "center",
          },
          {
            id: "work_unit",
            label: "Work Unit",
            minWidth: 150,
            width: 150,
            align: "center",
          },

          {
            id: "domain",
            label: "Domain",
            minWidth: 100,
            width: 150,
            align: "center",
          },
          {
            id: "available_time",
            label: "Available Time",
            minWidth: 100,
            width: 200,
            align: "center",
          },
          {
            id: "gender",
            label: "Gender",
            minWidth: 100,
            width: 100,
            align: "center",
          },

          {
            id: "introduction",
            label: "Introduction",
            minWidth: 150,
            width: 200,
            align: "center",
          },
          {
            id: "phone_number",
            label: "Phone number",
            minWidth: 150,
            width: 150,
            align: "center",
          },
        ]}
        hasLink
        nextStep="reserve"
        nextStepOnClick={handleReserve}
      />
      <Dialog open={showReserveDialog} maxWidth="md" fullWidth={true}>
        <DialogTitle>
          <Typography variant="h4">Reserve</Typography>
        </DialogTitle>
        <DialogContent>
          <div></div>
        </DialogContent>
        <DialogActions>
          <Button
            variant="contained"
            color="primary"
            onClick={handleSubmitReserve}
            disableElevation
          >
            Submit
          </Button>
        </DialogActions>
      </Dialog>
    </div>
  );
}
