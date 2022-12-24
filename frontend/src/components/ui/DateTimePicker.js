import React from "react";
import { makeStyles } from "@mui/styles";
import { DayPicker } from "react-day-picker";
import { ToggleButton, ToggleButtonGroup, Typography } from "@mui/material";
import "./day-picker.css";
import "react-day-picker/dist/style.css";

const useStyles = makeStyles((theme) => ({
  container: {
    display: "flex",
    flexDirection: "row",
  },
  dayPicker: {
    // marginLeft: "15px",
  },
  timeSlotsGroup: {
    width: "470px",
    maxWidth: "500px",
    flexWrap: "wrap",
    display: "flex",
    alignItems: "center",
    justifyContent: "flex-start",
  },
  dateResult: {
    marginLeft: "25px",
  },
}));

export default function DateTimePicker({
  selectedDate,
  setSelectedDate,
  selectedTime,
  setSelectedTime,
  multipleTimeSlots,
  timeSlots,
}) {
  const classes = useStyles();
  const handleSelectedTime = (
    event: React.MouseEvent<HTMLElement>,
    newFormats: string[]
  ) => {
    setSelectedTime(newFormats);
  };

  return (
    <div className={classes.container}>
      <div className={classes.dayPicker}>
        <DayPicker
          mode="single"
          selected={selectedDate}
          onSelect={setSelectedDate}
          showOutsideDays
        />
      </div>
      <div className={classes.timeSlotsGroup}>
        <div className={classes.dateResult}>
          <Typography variant="body1">
            {/* { TODO: add some design?
              selectedDate.getUTCFullYear() +
                "/" +
                ("0" + (selectedDate.getUTCMonth() + 1)).slice(-2) +
                "/" +
                ("0" + selectedDate.getUTCDate()).slice(-2)
              // " " +
              // ("0" + selectedDate.getUTCHours()).slice(-2) +
              // ":" +
              // ("0" + selectedDate.getUTCMinutes()).slice(-2) +
              // ":" +
              // ("0" + selectedDate.getUTCSeconds()).slice(-2)}
            } */}
          </Typography>
        </div>
        <ToggleButtonGroup
          sx={{
            display: "grid",
            gridTemplateColumns: "130px 130px 130px",
            gridGap: "20px",
            padding: "20px",
            flexWrap: "wrap",
          }}
          value={selectedTime}
          onChange={handleSelectedTime}
          exclusive={!multipleTimeSlots}
        >
          {timeSlots.map((slot) => {
            return (
              <ToggleButton
                value={slot}
                sx={{
                  borderLeft: "solid",
                  borderRadius: "2px",
                  borderColor: "#000000",
                }}
              >
                {slot}
              </ToggleButton>
            );
          })}
        </ToggleButtonGroup>
      </div>
    </div>
  );
}
