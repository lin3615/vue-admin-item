const state = {
    number : 0
}

const mutations = {
    addNumber(state,val) {
        state.number += val
    }
}

const actions = {
    addNumberchange(context, val) {
        context.commit('addNumber', val)
    }
}

const getters = {
    getNumber() {
        return state.number
    }
}

export default {
    namespaced:true, state,mutations,actions,getters
}