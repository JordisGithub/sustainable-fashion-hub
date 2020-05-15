import axios from "axios";

const baseUrl = "http://localhost:3000";

const api = axios.create({
  baseURL: baseUrl,
});

export const loginUser = async (loginData) => {
  const resp = await api.post("/auth/login", { auth: loginData });
  localStorage.setItem("authToken", resp.data.token);
  api.defaults.headers.common.authorization = `Bearer ${resp.data.token}`;
  return resp.data.user;
};

export const registerUser = async (registerData) => {
  const resp = await api.post("/users/", { user: registerData });
  localStorage.setItem("authToken", resp.data.token);
  api.defaults.headers.common.authorization = `Bearer ${resp.data.token}`;
  return resp.data.user;
};

export const verifyUser = async () => {
  const token = localStorage.getItem("authToken");
  if (token) {
    api.defaults.headers.common.authorization = `Bearer ${token}`;
    const resp = await api.get("/auth/verify");
    return resp.data;
  }
  return false;
};

export const createBrand = async (data) => {
  const resp = await api.post("/brands", { brand: data });
  return resp.data;
};

export const readAllBrands = async () => {
  const resp = await api.get("/brands");
  return resp.data;
};

export const updateBrand = async (id, data) => {
  const resp = await api.put(`/brands/${id}`, { brand: data });
  return resp.data;
};

export const destroyBrand = async (id) => {
  const resp = await api.delete(`/brands/${id}`);
  return resp.data;
};
