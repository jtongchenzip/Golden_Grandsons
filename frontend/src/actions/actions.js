import axios from "axios";

const agent = axios.create({ baseURL: "http://localhost:8000/" });
// TODO: how to connect to BE :D ....?

const getDietitian = () => {
	// const config = {};
	// const response = ___.get("/dietitian")
	// const res = response.data;
	// const data = {
	//   id: res.id,
	//   name: res.name,
	//   work_unit: res.work_unit,
	//   domain: res.domain,
	//   available_time: res.available_time,
	//   gender: res.gender,
	//   introduction: res.introduction,
	//   phone_number: res.phone_number,
	// };
	// console.log("response data",data)
	// return data;
};

const getArticles = () => {
	// const config = {};
	// const response = ___.get("/article")
	// const res = response.data;
	// // format post_time (expected format: "2022/10/12 10:00")
	// const post_time =
	//   [
	//     res.post_time.getFullYear(),
	//     res.post_time.getMonth() + 1,
	//     res.post_time.getDate(),
	//   ].join("/") +
	//   " " +
	//   [res.post_time.getHours(), res.post_time.getMinutes()].join(":");
	// const data = {
	//   id: res.id,
	//   advertiser_id: res.advertiser_id,
	//   advertiser_name: res.advertiser_name, //TODO: not in be now
	//   post_time: post_time,
	//   title: res.title,
	//   context: res.context,
	//   path: `/articles/${res.id}`,
	// };
	// console.log("response data", data);
	// return data;
};

const getSessions = (account_id) => {
	// const config = {};
	// const response = ___.get("/account/{account_id}/session")
	// const res = response.data;
	// for time format conversion (expected format: "2022/10/12 10:00")
	// const start_time =
	//   [
	//     res.start_time.getFullYear(),
	//     res.start_time.getMonth() + 1,
	//     res.start_time.getDate(),
	//   ].join("/") +
	//   " " +
	//   [res.start_time.getHours(), res.start_time.getMinutes()].join(":");
	// const end_time =
	//   [
	//     res.end_time.getFullYear(),
	//     res.end_time.getMonth() + 1,
	//     res.end_time.getDate(),
	//   ].join("/") +
	//   " " +
	//   [res.end_time.getHours(), res.end_time.getMinutes()].join(":");
	// const data = {
	//   id: res.id,
	//   user_id: res.user_id,
	//   dietitian_id: res.dietitian_id,
	//   dietitian_name: res.dietitian_name, // TODO: not in be now
	//   domain_id: res.domain_id,
	//   domain_name: res.domain_name, // TODO: not in be now
	//   session_status: res.session_status,
	//   path: res.link,
	//   time: start_time + " ➤ " + end_time,
	// };
	// console.log("response data", data);
	// return data;
};

const getArticle = async (id) => {
	try {
		const res = await agent.get(`/article/${id}`);
		const { data } = res.data;
		return data;
	} catch (e) {
		console.log(e.response); // data / status / header
		return e.response;
	}
};

const sendReservation = () => {};

const getReservation = () => {};

export { getDietitian, getArticles, getSessions };
