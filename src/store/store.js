import Vue from 'vue'
import Vuex from 'vuex'
import vuexadd from './vuexadd'
import vuexreduce from './vuexreduce'

Vue.use(Vuex);

export default new Vuex.Store({
    modules: {
        vuexadd,
        vuexreduce,
    }
})
