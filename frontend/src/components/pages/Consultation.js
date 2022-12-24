import {
	Typography,
	Dialog,
	DialogContent,
	DialogActions,
	DialogTitle,
	Button,
	FormControl,
	InputLabel,
	Select,
	MenuItem,
} from "@mui/material";
import React, { useState, useEffect } from "react";
import CustomTable from "../ui/CustomTable";
import { makeStyles } from "@mui/styles";
import DateTimePicker from "../ui/DateTimePicker";

const useStyles = makeStyles((theme) => ({
	container: {
		paddingTop: "100px",
		marginLeft: "18vw",
		width: "64%",
		display: "flex",
		flexDirection: "column",
		alignItems: "flex-start",
	},
	topicControl: {
		margin: "1% 2%",
		width: "300px",
	},
	topicSelect: {
		height: "54px",
	},
}));

const data = [
	{
		name: "erica",
		work_unit: "Cornelia Clinic",
		domain: "臨床營養",
		available_time: ["2022/10/12 10:00-11:00", "2022/10/17 12:00-13:00"],
		gender: "female",
		introduction: "10 年臨床營養經驗",
		phone_number: "0988422531",
	},
	{
		name: "amber",
		work_unit: "Amber Clinic",
		domain: "孕期營養",
		available_time: ["2022/12/28 20:00-21:00", "2022/12/29 09:00-10:00"],
		gender: "female",
		introduction: "接生過 1000 名嬰兒",
		phone_number: "0914566097",
	},
	{
		name: "jtc",
		work_unit: "RockClimbing Clinic",
		domain: "一般營養諮詢",
		available_time: ["2022/12/31 16:00-17:00", "2022/12/30 11:00-12:00"],
		gender: "female",
		introduction: "提供專業攀岩選手的最佳營養計畫",
		phone_number: "0907344689",
	},
];

const allTopic = ["臨床營養", "體重管理", "孕期營養", "一般營養諮詢"];

export default function Consulation() {
	const classes = useStyles();
	const [showReserveDialog, setShowReserveDialog] = useState(false);
	const [topic, setTopic] = useState("");
	const [filterTimeSlots, setFilterTimeSlots] = useState("");
	const [filterDate, setFilterDate] = useState("");
	const [disabled, setDisabled] = useState(true);
	// const [data, setData] = useState([]);
	// useEffect(() => {
	//   setData(getDietitian()); //TODO
	// }, []);

	useEffect(() => {
		if (!filterDate || !filterTimeSlots || !topic) {
			setDisabled(true);
		} else setDisabled(false);
	}, [disabled, filterDate, filterTimeSlots, topic]);

	const handleReserve = () => {
		setShowReserveDialog(true);
	};

	const handleSubmitFilterTime = () => {
		console.log("selected results", filterDate, filterTimeSlots);
		const dateFormat =
			filterDate.getFullYear() +
			"/" +
			("0" + (filterDate.getMonth() + 1)).slice(-2) +
			"/" +
			("0" + filterDate.getDate()).slice(-2);
		const filterTime = String(dateFormat + " " + filterTimeSlots);
		console.log("filter time", filterTime);

		setShowReserveDialog(false);
		setDisabled(true);
		setTopic("");
		setFilterDate("");
		setFilterTimeSlots([]);
	};

	const handleSubmitCancel = () => {
		setShowReserveDialog(false);
		setDisabled(true);
		setTopic("");
		setFilterDate("");
		setFilterTimeSlots([]);
	};

	const handleTopicChange = (event) => {
		setTopic(event.target.value);
	};

	return (
		<div className={classes.container}>
			<Typography variant="h3">Consulation</Typography>
			<CustomTable
				data={data}
				columns={[
					{
						id: "name",
						label: "Dietitian",
						minWidth: 100,
						width: 100,
						align: "center",
						type: "string",
					},
					{
						id: "work_unit",
						label: "Work Unit",
						minWidth: 150,
						width: 150,
						align: "center",
						type: "string",
					},
					{
						id: "domain",
						label: "Domain",
						minWidth: 100,
						width: 150,
						align: "center",
						type: "list",
					},
					{
						id: "available_time",
						label: "Available Time",
						minWidth: 100,
						width: 200,
						align: "center",
						type: "list",
					},
					{
						id: "gender",
						label: "Gender",
						minWidth: 100,
						width: 100,
						align: "center",
						type: "string",
					},
					{
						id: "introduction",
						label: "Introduction",
						minWidth: 150,
						width: 200,
						align: "center",
						type: "string",
					},
					{
						id: "phone_number",
						label: "Phone number",
						minWidth: 150,
						width: 150,
						align: "center",
						type: "string",
					},
				]}
				hasLink
				nextStep="reserve"
				nextStepOnClick={handleReserve}
			/>
			<Dialog open={showReserveDialog} maxWidth="md" fullWidth={true}>
				<DialogTitle>
					<Typography variant="h4">請選擇諮詢主題與時間</Typography>
				</DialogTitle>
				<DialogContent>
					<FormControl className={classes.topicControl}>
						<InputLabel className={classes.topicLabel}>諮詢主題</InputLabel>
						<Select
							className={classes.topicSelect}
							value={topic}
							label="諮詢主題"
							onChange={handleTopicChange}
						>
							{allTopic.map((item) => {
								return (
									<MenuItem value={item} key={item}>
										{item}
									</MenuItem>
								);
							})}
						</Select>
					</FormControl>
					<DateTimePicker
						selectedDate={filterDate}
						setSelectedDate={setFilterDate}
						selectedTime={filterTimeSlots}
						setSelectedTime={setFilterTimeSlots}
						multipleTimeSlots={false}
					/>
				</DialogContent>
				<DialogActions>
					<Button onClick={handleSubmitCancel}>Cancel</Button>
					<Button
						variant="contained"
						color="primary"
						onClick={handleSubmitFilterTime}
						disableElevation
						disabled={disabled}
					>
						Submit
					</Button>
				</DialogActions>
			</Dialog>
		</div>
	);
}
