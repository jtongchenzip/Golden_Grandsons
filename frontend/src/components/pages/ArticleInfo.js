import React, { useEffect } from "react";
import { useParams } from "react-router-dom";
import { makeStyles } from "@mui/styles";
import { Typography, Divider } from "@mui/material";

const useStyles = makeStyles((theme) => ({
	container: {
		paddingTop: "80px",
		marginLeft: "18vw",
		width: "64%",
		display: "flex",
		flexDirection: "row",
		alignItems: "flex-start",
	},
	leftHalf: {
		width: "70%",
		display: "flex",
		flexDirection: "column",
		alignItems: "flex-start",
		// justifyContent: "flex-start",
	},
	rightHalf: {
		width: "30%",
		display: "flex",
		flexDirection: "column",
		alignItems: "flex-start",
		borderRadius: "20px",
		backgroundColor: "#eae0d3",
		padding: "20px",
	},
	divider: {
		margin: "10px 0",
		borderColor: "#D3E4CD",
		borderWidth: "1px",
		width: "95%",
	},
	authorTitle: {
		marginBottom: "10px",
	},
	authorName: {
		color: "#656565",
	},
}));

export default function ArticleInfo() {
	const { id } = useParams(); // id for article
	const classes = useStyles();

	useEffect(() => {
		console.log("article id", id);
	});

	return (
		<div className={classes.container}>
			<div className={classes.leftHalf}>
				<Typography variant="h1">title</Typography>
				<Typography variant="h4" className={classes.authorName}>
					AUTHOR ‧ DATE
				</Typography>
				<Divider className={classes.divider} />
				<Typography>content</Typography>
			</div>
			<div className={classes.rightHalf}>
				<Typography variant="h4" className={classes.authorTitle}>
					About XXX
				</Typography>
				<Typography>hihihi</Typography>
			</div>
		</div>
	);
}
