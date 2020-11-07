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
                localStorage.ms_username = params.username
            }
            callback(response)
    })
}

const testData = (url,params,callback) => {
    var data = new URLSearchParams()
    data.append('page',params.page)
    data.append('pagesize',params.pagesize)
    data.append('typesearch',params.params.typesearch)
    data.append('name',params.params.name)
    request(url,data,(response) => {
        if(response &&
            response.status === 200 &&
            response.data.code ===0){
                callback(response)
            }else{
                callback(response)
            }
    })
}

const updateData = (url,param,callback) => {
    var data = new URLSearchParams()
    data.append('address',param.address)
    data.append('name',param.name)
    data.append('id',param.id)
    request(url,data,(response) => {
        if(response &&
            response.status === 200 && 
            response.data.code === 0){
                callback(response)
            }else{
                callback(response)
            }
    })
}

/**
 * 删除单一数据
 */
const deleteData = (url,param,callback) => {
    var data = new URLSearchParams()
    data.append('id',param.id)
    request(url,data,(response) => {
        if(response &&
            response.status === 200 && 
            response.data.code === 0){
                callback(response)
            }else{
                callback(response)
            }
    })

}

/**
 * 删除多条记录
 */
const deleteMultiData = (url,param,callback) => {
    var data = new URLSearchParams()
    data.append('ids',param.ids)
    request(url,data,(response) => {
        if(response &&
            response.status === 200 && 
            response.data.code === 0){
                callback(response)
            }else{
                callback(response)
            }
    })
}
const api = {
    reg:reg,
    login:login,
    testData:testData,
    updateData:updateData,
    deleteData:deleteData,
    deleteMultiData:deleteMultiData
}
export default api