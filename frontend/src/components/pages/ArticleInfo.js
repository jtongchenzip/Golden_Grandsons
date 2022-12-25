import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { makeStyles } from "@mui/styles";
import { Typography, Divider } from "@mui/material";
import { getArticle } from "../../actions/actions";

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
	},
	rightHalf: {
		width: "30%",
		display: "flex",
		flexDirection: "column",
		alignItems: "flex-start",
		borderRadius: "20px",
		backgroundColor: "#eae0d3",
		padding: "20px",
		textAlign: "left",
	},
	divider: {
		margin: "10px 0",
		borderColor: "#D3E4CD",
		borderWidth: "1px",
		width: "95%",
	},
	authorTitle: {
		marginBottom: "5%",
	},
	authorName: {
		color: "#656565",
	},
}));

export default function ArticleInfo() {
	const { id } = useParams(); // id for article
	const classes = useStyles();
	const [article, setArticle] = useState(null);

	useEffect(() => {
		async function fetchArticle() {
			const res = await getArticle(id);
			setArticle(res);
		}
		fetchArticle();
	}, [id]);

	return (
		<div>
			{article && (
				<div className={classes.container}>
					<div className={classes.leftHalf}>
						<Typography variant="h3">{article.title}</Typography>
						<Typography variant="h4" className={classes.authorName}>
							{article.advertiser.name} ‧{" "}
							{article.post_time.replace("T", " ").slice(0, -3)}
						</Typography>
						<Divider className={classes.divider} />
						<Typography>{article.context}</Typography>
					</div>
					<div className={classes.rightHalf}>
						<Typography variant="h4" className={classes.authorTitle}>
							About {article.advertiser.name}
						</Typography>
						<Typography>{article.advertiser.introduction}</Typography>
					</div>
				</div>
			)}
		</div>
	);
}
