import { Typography } from "@mui/material";
import React, { useState, useEffect } from "react";
import CustomTable from "../ui/CustomTable";
import { makeStyles } from "@mui/styles";
import { getSessions } from "../../actions/actions";
import { set } from "date-fns";

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
    dietitian_name: "erica",
    domain_name: "臨床營養",
    session_status: "reserved",
    path: "",
    time: "2022/10/12 10:00 ➤ 2022/10/12 11:00",
  },
  {
    dietitian_name: "tony",
    domain_name: "體重管理",
    session_status: "completed",
    path: "",
    time: "2022/10/22 07:00 ➤ 2022/10/22 07:00",
  },
];

export default function MyReservation() {
  const classes = useStyles();
  // const [data, setData] = useState([]);
  // useEffect(() => {
  //   setData(getSessions(account_id)); //TODO: account_id?
  // }, []);

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
            type: "string",
          },
          {
            id: "dietitian_name",
            label: "Dietitian",
            minWidth: 150,
            width: 150,
            align: "center",
            type: "string",
          },
          {
            id: "domain_name",
            label: "Domain",
            minWidth: 150,
            width: 150,
            align: "center",
            type: "string",
          },
          {
            id: "session_status",
            label: "Status",
            minWidth: 100,
            width: 150,
            align: "center",
            type: "string",
          },
        ]}
        hasLink
        nextStep="videoCall"
        //nextStepOnClick={handleReserve} TODO
      />
    </div>
  );
}
