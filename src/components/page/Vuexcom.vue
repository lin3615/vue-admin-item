<template>
    <div>
        000
        <el-button @click="incrementModule"> click++ </el-button>
        <el-button @click="descrementModule">click--</el-button>
        <p>****</p>
        <p>类加值: {{addNumber}}</p>
        <p>类减值: {{reduceNumber}}</p>
    </div>
</template>
<script>
import {mapActions, mapGetters} from 'vuex';

export default {
    name: 'vuexcom',
    computed:{
        // 通过 mapGetters获取值
        ...mapGetters({
            addNumber: 'vuexadd/getNumber',
            reduceNumber: 'vuexreduce/getNumber'
        })

    },
    methods: {
        // 方法名
        incrementModule() {
            this.$store.dispatch('vuexadd/addNumberchange',1)
        },
        descrementModule() {
            this.$store.dispatch('vuexreduce/reduceNumberchange', 1)
        }
    }
 
}

</script>
