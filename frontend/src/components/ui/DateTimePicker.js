import React, { useEffect, useState } from "react";
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
    alignItems: "flex-start",
    justifyContent: "flex-start",
    paddingTop: "55px",
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
  mode,
}) {
  const classes = useStyles();
  const [formattedTimeSlots, setFormattedTimeSlots] = useState([]);
  const [displayedTimeSlots, setDisplayedTimeSlots] = useState([]);

  const handleSelectedTime = (
    event: React.MouseEvent<HTMLElement>,
    newFormats: string[]
  ) => {
    setSelectedTime(newFormats);
  };

  // sort in ascending order
  const compareFunction = (a, b) => {
    if (a < b) {
      return -1;
    }
    if (b < a) {
      return 1;
    }
    return 0;
  };

  // format time slots
  useEffect(() => {
    const temp = timeSlots.map((slot) => {
      const timePeriod = String(slot.start_time) + "-" + String(slot.end_time);
      return { available_day: slot.available_day, slots: [timePeriod] };
    });
    const distinctDaysWithAvailableTimeSlots = temp.reduce((obj, item) => {
      obj[item.available_day]
        ? obj[item.available_day].slots.push(...item.slots)
        : (obj[item.available_day] = { ...item });
      return obj;
    }, {});
    console.log(
      "distinct days with available time slots",
      distinctDaysWithAvailableTimeSlots
    );
    setFormattedTimeSlots(temp);
  }, [timeSlots]);

  // select availabel time slots of specific date
  useEffect(() => {
    if (formattedTimeSlots && formattedTimeSlots.length !== 0) {
      if (selectedDate) {
        const targetIndex = formattedTimeSlots.findIndex((slot) => {
          if (selectedDate.getDay() + 1 === 1) {
            return slot.available_day === selectedDate.getDay() + 7; // handle Sunday(0)
          } else {
            return slot.available_day === selectedDate.getDay();
          }
        });
        if (targetIndex !== -1) {
          setDisplayedTimeSlots(
            formattedTimeSlots[targetIndex].slots.sort(compareFunction)
          );
        } else {
          // if date is not available
          setDisplayedTimeSlots([]);
        }
      } else {
        // if date is undefined
        setDisplayedTimeSlots([]);
      }
    }
  }, [formattedTimeSlots, selectedDate]);

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
          {mode === "allSlots" &&
            timeSlots.map((slot) => {
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
          {mode === "availableSlots" &&
            displayedTimeSlots &&
            displayedTimeSlots.length !== 0 &&
            displayedTimeSlots.map((slot) => {
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
