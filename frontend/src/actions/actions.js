import axios from "axios";

const agent = axios.create({
  baseURL: "http://localhost:8000",
});

const getArticles = async () => {
  try {
    const res = await agent.get("/article");
    const { payload } = res.data;
    return payload;
  } catch (e) {
    console.log(e.response);
    return e.response;
  }
};

const getSessions = async (account_id) => {
  try {
    const res = await agent.get(`/account/${account_id}/session`);
    const { payload } = res.data;
    return payload;
  } catch (e) {
    console.log(e.response);
    return e.response;
  }
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
