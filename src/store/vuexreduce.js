const state = {
    number: 100
}

const mutations = {
    reduceNumber(state, num) {
        state.number -= num;
    }
}

const actions = {
    reduceNumberchange(context, num) {
        context.commit('reduceNumber', num)
    }
}

const getters = {
    getNumber() {
        return state.number
    }
}

export default {
    namespaced: true,state,mutations,actions,getters
}