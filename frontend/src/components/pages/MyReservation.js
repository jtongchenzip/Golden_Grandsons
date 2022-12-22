import { Typography } from "@mui/material";
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

// response format
// id: int
// user_id: int
// dietitan_id: int
// domain_id: int
// session_status: enums.SessionStatusType
// link: str
// start_time: datetime
// end_time: datetime
const data = [
  {
    dietitian_name: "erica",
    domain_name: "臨床營養",
    session_status: "reserved",
    path: "", //對應回傳的 link
    time: "2022/10/12 10:00 ➤ 2022/10/12 11:00", //對應回傳的start_time, end_time
  },
  {
    dietitian_name: "tony",
    domain_name: "體重管理",
    session_status: "completed",
    path: "", //對應回傳的 link
    time: "2022/10/22 07:00 ➤ 2022/10/22 07:00", //對應回傳的start_time, end_time
  },
];

export default function MyReservation() {
  const classes = useStyles();

  return (
    <div className={classes.container}>
      <Typography variant="h3">My Reservation</Typography>
      <CustomTable
        data={data}
        columns={[
          {
            id: "time",
            label: "Time",
            minWidth: 200,
            width: 330,
            align: "center",
          },
          {
            id: "dietitian_name",
            label: "Dietitian",
            minWidth: 150,
            width: 150,
            align: "center",
          },
          {
            id: "domain_name",
            label: "Domain",
            minWidth: 150,
            width: 150,
            align: "center",
          },
          {
            id: "session_status",
            label: "Status",
            minWidth: 100,
            width: 150,
            align: "center",
          },
        ]}
        hasLink
        nextStep="videoCall"
        //nextStepOnClick={handleReserve} TODO
      />
    </div>
  );
}
