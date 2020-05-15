// import axios from "axios";

// const baseUrl = "http://localhost:3000";

// const api = axios.create({
//   baseURL: baseUrl,
// });

// // =========================================
// // ================Auth=====================
// // ===========================================

// export const loginUser = async (loginData) => {
//   const resp = await api.post("/auth/login", { auth: loginData });
//   localStorage.setItem("authToken", resp.data.token);
//   api.defaults.headers.common.authorization = `Bearer ${resp.data.token}`;
//   return resp.data.user;
// };

// export const registerUser = async (registerData) => {
//   const resp = await api.post("/users/", { user: registerData });
//   localStorage.setItem("authToken", resp.data.token);
//   api.defaults.headers.common.authorization = `Bearer ${resp.data.token}`;
//   return resp.data.user;
// };

// export const verifyUser = async () => {
//   const token = localStorage.getItem("authToken");
//   if (token) {
//     api.defaults.headers.common.authorization = `Bearer ${token}`;
//     const resp = await api.get("/auth/verify");
//     return resp.data;
//   }
//   return false;
// };

// export const removeToken = () => {
//   api.defaults.headers.common.authorization = null;
// };

// // =========================================
// // ================Brands===================
// // ===========================================

// export const getAllBrands = async () => {
//   const resp = await api.get("/brands");
//   return resp.data;
// };

// export const getOneBrand = async (id) => {
//   const resp = await api.get(`/brands/${id}`);
//   return resp.data;
// };

// export const postBrand = async (brandData) => {
//   const resp = await api.post("/brands", brandData);
//   return resp.data;
// };

// export const putBrand = async (id, brandData) => {
//   const resp = await api.put(`/brands/${id}`, brandData);
//   return resp.data;
// };

// export const destroyBrand = async (id) => {
//   const resp = await api.delete(`/brands/${id}`);
//   return resp;
// };

// // =========================================
// // ================Items===================
// // ===========================================

// export const getAllItems = async () => {
//   const resp = await api.get("/items");
//   return resp.data;
// };

// // =========================================
// // ================Brand & Items===================
// // ===========================================

// export const addItem = async (itemId, brandId) => {
//   const resp = await api.get(`/items/${itemId}/brands/${brandId}`);
//   return resp.data;
// };

import axios from "axios";

const baseUrl = "http://localhost:3000";

const api = axios.create({
  baseURL: baseUrl,
});

// =========================================
// ================Auth=====================
// ===========================================

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

export const removeToken = () => {
  api.defaults.headers.common.authorization = null;
};

// =========================================
// ================Brands===================
// ===========================================

export const getAllBrands = async () => {
  const resp = await api.get("/brands");
  return resp.data;
};

export const getOneBrand = async (id) => {
  const resp = await api.get(`/brands/${id}`);
  return resp.data;
};

export const postBrand = async (brandData) => {
  const resp = await api.post("/brands", brandData);
  return resp.data;
};

export const putBrand = async (id, brandData) => {
  const resp = await api.put(`/brands/${id}`, brandData);
  return resp.data;
};

export const destroyBrand = async (id) => {
  const resp = await api.delete(`/brands/${id}`);
  return resp;
};

// =========================================
// ================Items===================
// ===========================================

export const getAllItems = async () => {
  const resp = await api.get("/items");
  return resp.data;
};

// =========================================
// ================Brand & Items===================
// ===========================================

export const addItem = async (itemId, brandId) => {
  const resp = await api.get(`/items/${itemId}/brands/${brandId}`);
  return resp.data;
};
