import axios from 'axios'
import router from '../router'

const request = (url,data,callback) => {
    axios.post('/interface/'+url,data)
    .then((response) => {
        if(response && response.status === 200 &&
            response.data.code === 1000){
                router.push({
                    name:'login'
                })
            }
            callback(response)
    })
}

/**
 * reg
 */
const reg = (params,callback) => {
    var data = new URLSearchParams()
    data.append('username',params.username)
    data.append('password',params.password)
    data.append('password2',params.password2)
    data.append('phone',params.phone)
    data.append('email',params.email)
    request('/user/reg',data,(response) => {
        callback(response);
    })
}

/**
 * login
 */
const login = (params,callback) => {
    var data = new URLSearchParams()
    data.append('username',params.username)
    data.append('password',params.password)
    request('user/login',data,(response) => {
        if(response && 
            response.status === 200 &&
            response.data.code === 0){
                localStorage.token = response.data.data.token
            }
            callback(response)
    })
}
const api = {
    reg:reg,
    login:login
}
export default api