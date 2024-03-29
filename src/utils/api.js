import axios from 'axios'
import router from '../router'
import define from './define'

const request = (url,data,callback) => {
    // console.log('/interface/index.php'+url)
    axios.post(define.interfaceway+url,data)
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

/**
 * 获取基本表单数据
 */
const testGetTbaseform = (url,param,callback) => {
    var data = new URLSearchParams()
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
 * 基本表单提交
 */
const tbaseform = (url,param,callback) => {
    var data = new URLSearchParams()
    data.append("date1",param.date1)
    data.append("date2",param.date2)
    data.append("delivery",param.delivery)
    data.append("desc",param.desc)
    data.append("name",param.name)
    data.append("region",param.region)
    data.append("options",param.options)
    data.append("resource",param.resource)
    data.append("type",param.type)
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

const tbaseContentForm = (url,param,callback) => {
    var data = new URLSearchParams()
    data.append("date1",param.date1)
    data.append("date2",param.date2)
    data.append("delivery",param.delivery)
    data.append("desc",param.desc)
    data.append("name",param.name)
    data.append("region",param.region)
    data.append("options",param.options)
    data.append("resource",param.resource)
    data.append("type",param.type)
    data.append('contenttxt',param.contenttxt)
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
    deleteMultiData:deleteMultiData,
    tbaseform:tbaseform,
    testGetTbaseform:testGetTbaseform,
    tbaseContentForm:tbaseContentForm
}
export default api