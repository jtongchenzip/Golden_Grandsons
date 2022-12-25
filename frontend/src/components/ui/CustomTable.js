import {
  Typography,
  Paper,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  TextField,
  Button,
  MenuItem,
  FormControl,
  Select,
  InputAdornment,
  IconButton,
  Dialog,
  DialogContent,
  DialogActions,
} from "@mui/material";
import { makeStyles } from "@mui/styles";
import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import SearchIcon from "@mui/icons-material/Search";
import CalendarTodayIcon from "@mui/icons-material/CalendarToday";
import ArrowBackIosIcon from "@mui/icons-material/ArrowBackIos";
import ArrowForwardIosIcon from "@mui/icons-material/ArrowForwardIos";
import EventAvailableIcon from "@mui/icons-material/EventAvailable";
import ArrowForwardIcon from "@mui/icons-material/ArrowForward";
import VideoCallIcon from "@mui/icons-material/VideoCall";
import DateTimePicker from "./DateTimePicker";

const useStyles = makeStyles((theme) => ({
  topContent: {
    //background: theme.palette.grey.A100,
    borderRadius: "10px 10px 0px 0px",
    margin: "30px 0px 15px 0px",
    padding: "5px 0px 5px 0px",
    display: "flex",
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    height: "45px",
    width: "100%",
  },
  searchIcon: {
    height: 34,
    width: 34,
  },
  buttons: {
    marginTop: "3px",
    height: "60px",
  },
  children: {
    margin: "16px 0px 50px 50px",
  },
  root: {
    width: "100%",
  },
  tableRowContainerLeftSpacing: {
    width: "15px",
    padding: "0px",
  },
  tableColumnLeftSpacing: {
    width: "10px",
    padding: "0px",
  },
  tableHeadCell: {
    padding: "5px !important",
    borderBottomWidth: "1px",
    borderBottomColor: theme.palette.custom.main,
    width: "fit-content",
  },
  column: {
    display: "flex",
    flexDirection: "row",
    justifyContent: "center",
  },
  columnLabelMoveLeft: {
    transform: "translateX(-5px)",
  },
  columnLabelDefault: {
    transform: "translateX(0px)",
  },
  columnComponent: {
    transform: "translateX(5px) translateY(2px)",
  },
  tableBodyCell: {
    padding: "17.5px 5px 17.5px 5px",
    maxWidth: "100%",
    maxHeight: "72px",
    overflow: "hidden",
    textOverflow: "ellipsis",
    whiteSpace: "nowrap",
    "&:hover~$stickyArrowCell": {
      backgroundImage: "inherit",
    },
  },
  bottom: {
    height: "75px",
    display: "flex",
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "flex-end",
    paddingRight: "10px",
    background: theme.palette.background.default,
    marginTop: "10px",
  },
  pageChangeButtons: {
    width: "70px",
    paddingTop: "11.5px",
    marginLeft: "5px",
  },
  pageRowSelect: {
    width: "85px",
    height: "50px",
    margin: "5px 5px 5px 5px",
  },
  pageText: {
    margin: "0px 5px 0px 5px",
  },
  pageIndexTextField: {
    width: "70px !important",
    height: "45px",
    margin: "0px 5px 0px 5px",
  },
  detailLink: {
    color: "black",
  },
  toggleButtonIcon: {
    height: "20px",
    width: "20px",
  },
  arrowIcon: {
    height: "35px",
    margin: "auto",
  },
  stickyArrowCell: {
    position: "sticky",
    right: 0,
    zIndex: 100,
  },
  tableCellHover: {
    backgroundColor: "inherit",
    backgroundImage:
      "linear-gradient(rgba(255, 255, 255, 1), rgba(255, 255, 255, 1))",
    "&:hover": {
      backgroundImage: "inherit",
    },
  },
  textLink: {
    textDecoration: "none",
    color: theme.palette.primary.main,
    "&:hover": {
      color: theme.palette.primary.light,
    },
    "&:active": {
      color: theme.palette.primary.dark,
    },
  },
}));

const timeSlots = [
  "09:00-10:00",
  "10:00-11:00",
  "11:00-12:00",
  "12:00-13:00",
  "13:00-14:00",
  "14:00-15:00",
  "15:00-16:00",
  "16:00-17:00",
  "17:00-18:00",
  "18:00-19:00",
  "19:00-20:00",
  "20:00-21:00",
];

export default function CustomTable({
  hasSearch,
  buttons,
  columns,
  data,
  hasLink,
  linkName,
  children,
  nextStep,
  nextStepOnClick,
  setOnClickID,
  setShowDialog,
}) {
  const classes = useStyles();
  const [curPage, setPage] = useState(0);
  const [pageInput, setPageInput] = useState(1);
  const [rowsPerPage, setRowsPerPage] = useState(5);
  const [search, setSearch] = useState("");
  const [filterTimeSlots, setFilterTimeSlots] = useState([]);
  const [filterDate, setFilterDate] = useState("");
  const [filterData, setFilterData] = useState(data);
  const [showFilterTime, setShowFilterTime] = useState(false);
  const handleChangePage = (event, newPage) => {
    if (
      newPage + 1 <= Math.ceil(filterData.length / rowsPerPage) &&
      newPage >= 0
    ) {
      setPageInput(newPage + 1);
    }
  };

  // initialize data
  useEffect(() => {
    setFilterData(data);
  }, [columns, data]);
  // search for the keyword in all columns
  const handleSearch = () => {
    const searchResult = data.filter((record) => {
      // search in an array
      if (Object.keys(record).includes("domain")) {
        const arrDomain = record.domain.reduce((acc, { name }) => {
          return [...acc, name];
        }, "");
        if (arrDomain.includes(search)) {
          return true;
        }
      }
      const values = Object.values(record);
      return values.some((value) => {
        if (typeof value === "string") {
          return value.includes(String(search));
        }
      });
    });
    setFilterData(searchResult);
  };
  // handle filter time slots
  const handleSubmitFilterTime = () => {
    console.log("filter keys", filterDate, filterTimeSlots);
    if (
      (filterDate === "" || filterDate === undefined) &&
      filterTimeSlots.length === 0
    ) {
      setFilterData(data);
    } else if (filterDate !== "" && filterTimeSlots.length === 0) {
      const dateFormat = transformDateFormat(filterDate);
      const filterTime = String(dateFormat);
      const filterResult = dataFilterByTime(data, filterTime, "date");
      setFilterData(filterResult);
    } else if (
      (filterDate === "" || filterDate === undefined) &&
      filterTimeSlots.length !== 0
    ) {
      const filterTime = filterTimeSlots.map((slot) => String(slot));
      const filterResult = dataFilterByTime(data, filterTime, "time");
      setFilterData(filterResult);
    } else {
      const dateFormat = transformDateFormat(filterDate);
      const filterTime = filterTimeSlots.map((slot) =>
        String(dateFormat + " " + slot)
      );
      const filterResult = dataFilterByTime(data, filterTime, "datetime");
      setFilterData(filterResult);
    }
    setShowFilterTime(false);
  };
  // functions for time filter
  const transformDateFormat = (filterDate) => {
    const day = filterDate.getDay();
    const days = ["星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
    if (day === 0) {
      return "星期天";
    } else {
      return days[day - 1];
    }
  };
  const dataFilterByTime = (data, filterTime, mode) => {
    return data.filter((record) => {
      console.log("record", record);
      return record.arrAvailTime.some((slot) => {
        if (mode === "time") {
          return filterTime.some((filterKey) => slot.includes(filterKey));
        } else if (mode === "date") {
          return slot.includes(filterTime);
        } else {
          return filterTime.includes(slot);
        }
      });
    });
  };

  // handle next step
  const handleNextStep = (id, link) => {
    if (nextStep === "reserve") {
      nextStepOnClick(); // open dialog
      setOnClickID(id);
    } else if (nextStep === "readArticles") {
      nextStepOnClick(id); // history push
    } else if (nextStep === "videoCall") {
      nextStepOnClick(link); // open new window
    }
  };

  // handle page change
  useEffect(() => {
    if (
      pageInput <= Math.ceil(filterData.length / rowsPerPage) &&
      pageInput >= 1
    ) {
      setPage(pageInput - 1);
    }
  }, [filterData.length, pageInput, rowsPerPage]);

  return (
    <>
      <div className={classes.topContent}>
        <TextField
          id="search"
          onChange={(e) => {
            setSearch(e.target.value);
          }}
          value={search}
          placeholder={"Search"}
          InputProps={{
            endAdornment: (
              <InputAdornment position="end">
                <IconButton
                  onClick={handleSearch}
                  className={classes.searchIcon}
                >
                  <SearchIcon />
                </IconButton>
              </InputAdornment>
            ),
          }}
        />
        <IconButton
          onClick={() => setShowFilterTime(true)}
          sx={{ marginRight: "15px" }}
          color="info"
        >
          <CalendarTodayIcon sx={{ height: 20, width: 22 }} color="#958e77" />
        </IconButton>
      </div>
      <Dialog open={showFilterTime} maxWidth="md">
        <DialogContent sx={{ paddingRight: "2px" }}>
          <DateTimePicker
            selectedDate={filterDate}
            setSelectedDate={setFilterDate}
            selectedTime={filterTimeSlots}
            setSelectedTime={setFilterTimeSlots}
            multipleTimeSlots={true}
            timeSlots={timeSlots}
            mode="allSlots"
          />
        </DialogContent>
        <DialogActions>
          <Button
            onClick={() => {
              setFilterDate("");
              setFilterTimeSlots([]);
            }}
          >
            Clear Filter
          </Button>
          <Button
            variant="contained"
            color="primary"
            onClick={handleSubmitFilterTime}
            disableElevation
          >
            Apply
          </Button>
        </DialogActions>
      </Dialog>

      <Paper className={classes.root} elevation={0}>
        <TableContainer className={classes.container}>
          <Table stickyHeader aria-label="sticky table">
            <TableHead>
              <TableRow className={classes.row}>
                {columns.map((column) => (
                  <React.Fragment key={`${column.id}-${column.label}`}>
                    <TableCell
                      align={column.align}
                      className={classes.tableHeadCell}
                      style={{
                        minWidth: column.minWidth,
                        width: column.width,
                        maxWidth: column.width,
                      }}
                    >
                      <b>{column.label}</b>
                    </TableCell>
                  </React.Fragment>
                ))}
                <TableCell
                  key={hasLink ? "link" : "blank"}
                  align="right"
                  className={`${classes.tableHeadCell} ${classes.stickyArrowCell}`}
                  style={{ minWidth: 20 }}
                />
              </TableRow>
            </TableHead>
            <TableBody>
              {filterData
                .slice(
                  curPage * rowsPerPage,
                  curPage * rowsPerPage + rowsPerPage
                )
                .map((row) => (
                  <TableRow
                    hover
                    role="checkbox"
                    tabIndex={-1}
                    key={row.id}
                    className={`${classes.row} ${classes.tableBodyRow}`}
                  >
                    {columns.map((column) => {
                      if (column.type === "dialog") {
                        // click link to open dialog (weird alternative plan)
                        //const link = row[column.link_id];
                        const value = row[column.id];
                        return (
                          <React.Fragment key={`${column.id}-${column.label}`}>
                            <TableCell
                              className={`${classes.tableBodyCell} ${classes.textLink}`}
                              style={{
                                minWidth: column.minWidth,
                                width: column.width,
                                maxWidth: column.width,
                              }}
                              align={column.align}
                            >
                              <Link
                                onClick={() => {
                                  setShowDialog(true);
                                  setOnClickID(row.id);
                                }}
                                className={classes.textLink}
                              >
                                {column.format && typeof value === "number"
                                  ? column.format(value)
                                  : value}
                              </Link>
                              {/* {column.isExternal ? (
                                <a
                                  href={link}
                                  className={classes.textLink}
                                  target="_blank"
                                  rel="noreferrer noopener"
                                >
                                  {column.format && typeof value === "number"
                                    ? column.format(value)
                                    : value}
                                </a>
                              ) : (
                                <Link
                                  //to={link}
                                  onClick={() => {
                                    history.push(link);
                                    window.location.reload();
                                  }}
                                  className={classes.textLink}
                                >
                                  {column.format && typeof value === "number"
                                    ? column.format(value)
                                    : value}
                                </Link>
                              )} */}
                            </TableCell>
                          </React.Fragment>
                        );
                      }
                      const value = row[column.id];
                      return (
                        <React.Fragment key={`${column.id}-${column.label}`}>
                          <TableCell
                            className={classes.tableBodyCell}
                            style={{
                              minWidth: column.minWidth,
                              width: column.width,
                              maxWidth: column.width,
                            }}
                            align={column.align}
                          >
                            {column.format && typeof value === "number"
                              ? column.format(value)
                              : column.type === "list"
                              ? value.toString().split(",").join(", ")
                              : value}
                          </TableCell>
                        </React.Fragment>
                      );
                    })}
                    {hasLink ? (
                      <TableCell
                        key={`${row.id}-show`}
                        align="right"
                        className={`${classes.stickyArrowCell} ${classes.tableCellHover}`}
                      >
                        {nextStep === "readArticles" ? (
                          <Link to={row.path} className={classes.detailLink}>
                            <IconButton
                              onClick={(id, path) =>
                                handleNextStep(row.id, row.path)
                              }
                            >
                              <ArrowForwardIcon />
                            </IconButton>
                          </Link>
                        ) : (
                          <IconButton
                            onClick={(id, path) =>
                              handleNextStep(row.id, row.path)
                            }
                          >
                            {nextStep === "reserve" && <EventAvailableIcon />}
                            {nextStep === "videoCall" && <VideoCallIcon />}
                          </IconButton>
                        )}
                      </TableCell>
                    ) : (
                      <TableCell
                        key={`${row.id}-blank`}
                        align="right"
                        style={{ minWidth: 20 }}
                      />
                    )}
                  </TableRow>
                ))}
            </TableBody>
          </Table>
        </TableContainer>
        <div className={classes.bottom}>
          <FormControl variant="outlined">
            <Select
              className={classes.pageRowSelect}
              labelId="rows-per-page"
              id="rows-per-page"
              value={rowsPerPage}
              onChange={(e) => {
                setRowsPerPage(e.target.value);
              }}
            >
              <MenuItem value={5}>5</MenuItem>
              <MenuItem value={10}>10</MenuItem>
              <MenuItem value={25}>25</MenuItem>
              <MenuItem value={50}>50</MenuItem>
            </Select>
          </FormControl>

          <Typography className={classes.pageText} variant="body1">
            rows
          </Typography>
          <Button
            variant="contained"
            color="primary"
            className={classes.pageChangeButtons}
            onClick={(e) => {
              handleChangePage(e, curPage - 1);
            }}
            disableElevation
          >
            <ArrowBackIosIcon fontSize="small" />
          </Button>
          <TextField
            className={classes.pageIndexTextField}
            value={pageInput}
            onChange={(e) => {
              setPageInput(e.target.value);
            }}
          />
          <Typography className={classes.pageText} variant="body1">
            of {Math.ceil(filterData.length / rowsPerPage)}
          </Typography>
          <Button
            variant="contained"
            color="primary"
            className={classes.pageChangeButtons}
            onClick={(e) => {
              handleChangePage(e, curPage + 1);
            }}
            disableElevation
          >
            <ArrowForwardIosIcon fontSize="small" />
          </Button>
        </div>
      </Paper>
      <div className={classes.children}>{children}</div>
    </>
  );
}
