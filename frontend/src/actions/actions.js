import axios from "axios";

const agent = axios.create({
  baseURL: "http://localhost:8000",
});

const getArticles = async () => {
  try {
    const res = await agent.get("/article");
    const { payload } = res.data;
    console.log("payload", payload);
    return payload;
  } catch (e) {
    console.log(e.response);
    return e.response;
  }
  // const config = {};
  // const response = ___.get("")
  // const res = response.data;
  // // format post_time (expected format: "2022/10/12 10:00")

  // const data = {
  //   id: res.id,
  //   advertiser_id: res.advertiser_id,
  //   advertiser_name: res.advertiser_name,
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
  //   dietitian_name: res.dietitian_name,
  //   domain_id: res.domain_id,
  //   domain_name: res.domain_name,
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
    const { payload } = res.data;
    return payload;
  } catch (e) {
    console.log(e.response);
    return e.response;
  }
};

const postSession = async (data) => {
  try {
    const url = `/session?user_id=${data.user_id}&dietitian_id=${data.dietitian_id}&domain_id=${data.domain_id}&start_time=${data.start_time}&end_time=${data.end_time}`;
    const res = await agent.post(url);
    // const res = await agent.post("/session", null, {
    // 	params: {
    // 		user_id: payload.user_id,
    // 		dietian_id: payload.dietian_id,
    // 		domain_id: payload.domain_id,
    // 		start_time: payload.start_time,
    // 		end_time: payload.end_time,
    // 	},
    // });
    const { payload } = res.data;
    return payload;
  } catch (e) {
    console.log(e.response);
  }
};

const getDietitian = async () => {
  try {
    const res = await agent.get(`/dietitian`);
    const { payload } = res.data;
    return payload;
  } catch (e) {
    console.log(e.response);
    return e.response;
  }
};

export { getDietitian, getArticles, getSessions, getArticle, postSession };
