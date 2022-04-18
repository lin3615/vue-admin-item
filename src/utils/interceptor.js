import axios from "axios";
import router from "../router";

axios.interceptors.request.use((config) => {
    const token = localStorage.getItem('token');

    if(token) {
        config.headers.token = token;
    }
    if(config.method === 'get') {
        config.params = config.params || {};
        let json = JSON.parse(JSON.stringify(config.params));
    }else{
        config.data = config.data || {}
    }
    // console.log(config)
    return config;
})

axios.interceptors.response.use((response) => {
    if(response.data.code === 501) {
        router.push({
            name: 'login'
        })
    }
    console.log(response)
    return response;
},
(error) => {
    return Promise.reject(error);
})
export default axios