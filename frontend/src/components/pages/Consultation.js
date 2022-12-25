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
import { postSession } from "../../actions/actions";
import DietitianInfo from "./DietitianInfo";
import { getDietitian } from "../../actions/actions";
import { useHistory } from "react-router-dom";

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
	sucsDialogContent: {
		margin: "1% 3%",
	},
}));

const data = [
	{
		id: 1,
		name: "erica",
		work_unit: "Cornelia Clinic",
		domain: "臨床營養",
		available_time: ["2022/10/12 10:00-11:00", "2022/10/17 12:00-13:00"],
		gender: "female",
		introduction: "10 年臨床營養經驗",
		phone_number: "0988422531",
		link_id: "/dietitian/1",
	},
	{
		id: 2,
		name: "amber",
		work_unit: "Amber Clinic",
		domain: "孕期營養",
		available_time: ["2022/12/28 20:00-21:00", "2022/12/29 09:00-10:00"],
		gender: "female",
		introduction: "接生過 1000 名嬰兒",
		phone_number: "0914566097",
		link_id: "/dietitian/2",
	},
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

const allDomain = [
	{ id: 1, name: "臨床營養" },
	{ id: 2, name: "體重管理" },
	{ id: 3, name: "孕期營養" },
	{ id: 4, name: "一般營養諮詢" },
];
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

export default function Consulation() {
	const classes = useStyles();
	const history = useHistory();
	const [showReserveDialog, setShowReserveDialog] = useState(false);
	const [topic, setTopic] = useState("");
	const [filterTimeSlots, setFilterTimeSlots] = useState("");
	const [filterDate, setFilterDate] = useState("");
	const [disabled, setDisabled] = useState(true);
	const [onClickID, setOnClickID] = useState("");
	const [showDietitianInfo, setShowDietitianInfo] = useState(false);
	const [resSession, setResSession] = useState(null);
	const [availableSlots, setAvailableSlots] = useState([]);
	const [showSucsDialog, setShowSucsDialog] = useState(false);
	const [dietitianInfo, setDietitianInfo] = useState([]);

	useEffect(() => {
		if (!filterDate || !filterTimeSlots || !topic) {
			setDisabled(true);
		} else setDisabled(false);
	}, [disabled, filterDate, filterTimeSlots, topic]);

	useEffect(() => {
		async function fetchDietitian() {
			const res = await getDietitian();
			res.map((item) => {
				item.arrDomain = item.domain.reduce((acc, { name }) => {
					return [...acc, name];
				}, []);
			});
			setDietitianInfo(res);
		}
		fetchDietitian();
	}, []);

	useEffect(() => {
		const temp = dietitianInfo.find((x) => x.id === onClickID);
		if (temp) {
			setAvailableSlots(temp.available_time);
		}
	}, [onClickID, dietitianInfo]);

	useEffect(() => {
		if (resSession) {
			setShowSucsDialog(true);
		} else setShowSucsDialog(false);
	}, [resSession]);

	const handleReserve = () => {
		setShowReserveDialog(true);
	};

	const handleSubmitFilterTime = async () => {
		// console.log("selected results", filterDate, filterTimeSlots);
		const dateFormat =
			filterDate.getFullYear() +
			"/" +
			("0" + (filterDate.getMonth() + 1)).slice(-2) +
			"/" +
			("0" + filterDate.getDate()).slice(-2);

		const startFilterTime = String(
			dateFormat.replaceAll("/", "-") +
				"T" +
				(filterTimeSlots.split("-")[0] + ":00").replaceAll(":", "%3A")
		);
		const endFilterTime = String(
			dateFormat.replaceAll("/", "-") +
				"T" +
				(filterTimeSlots.split("-")[1] + ":00").replaceAll(":", "%3A")
		);
		// console.log("start time", startFilterTime);

		const data = {
			user_id: 1,
			dietitian_id: onClickID,
			domain_id: topic,
			start_time: startFilterTime,
			end_time: endFilterTime,
		};
		const res = await postSession(data);
		setResSession(res);
		// console.log(resSession);

		setShowReserveDialog(false);
		setDisabled(true);
		setTopic("");
		setFilterDate("");
		setFilterTimeSlots("");
	};

	const handleSubmitCancel = () => {
		setShowReserveDialog(false);
		setDisabled(true);
		setTopic("");
		setFilterDate("");
		setFilterTimeSlots("");
	};

	const handleTopicChange = (event) => {
		setTopic(event.target.value);
	};

	const handleGoMyReservation = () => {
		history.push("/my-reservation");
		window.location.reload();
	};

	return (
		<div className={classes.container}>
			<Typography variant="h3">Consultation</Typography>
			<CustomTable
				data={dietitianInfo}
				columns={[
					{
						id: "name",
						label: "Dietitian",
						minWidth: 100,
						width: 100,
						align: "center",
						type: "dialog",
					},
					{
						id: "work_unit",
						label: "Work Unit",
						minWidth: 150,
						width: 200,
						align: "center",
						type: "string",
					},
					{
						id: "arrDomain",
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
						width: 400,
						align: "center",
						type: "list",
					},
				]}
				hasLink
				nextStep="reserve"
				nextStepOnClick={handleReserve}
				setOnClickID={setOnClickID}
				setShowDialog={setShowDietitianInfo}
			/>
			<DietitianInfo
				showDialog={showDietitianInfo}
				setShowDialog={setShowDietitianInfo}
				onClickID={onClickID}
			/>
			{availableSlots && availableSlots.length !== 0 && (
				<Dialog open={showReserveDialog} maxWidth="md" fullWidth={false}>
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
								{allDomain.map(({ id, name }) => {
									return (
										<MenuItem value={id} key={id}>
											{name}
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
							timeSlots={availableSlots}
							mode="availableSlots"
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
			)}
			{resSession && filterDate && filterTimeSlots && (
				<Dialog open={showSucsDialog} maxWidth="sm" fullWidth={true}>
					<DialogTitle>
						<Typography variant="h4">預約成功</Typography>
					</DialogTitle>
					<DialogContent className={classes.sucsDialogContent}>
						<Typography>
							諮詢對象：{resSession.dietitian_name} 營養師
						</Typography>
						<Typography>
							諮詢時間：
							{filterDate.getFullYear() +
								"/" +
								("0" + (filterDate.getMonth() + 1)).slice(-2) +
								"/" +
								("0" + filterDate.getDate()).slice(-2) +
								" " +
								filterTimeSlots}
						</Typography>
						{/*TODO: change time format*/}
						<Typography>諮詢主題：{resSession.domain_name}</Typography>
						<Typography>視訊會議連結：{resSession.link}</Typography>
					</DialogContent>
					<DialogActions>
						<Button
							variant="contained"
							color="primary"
							onClick={handleGoMyReservation}
							disableElevation
						>
							前往預約記錄
						</Button>
					</DialogActions>
				</Dialog>
			)}
		</div>
	);
}
