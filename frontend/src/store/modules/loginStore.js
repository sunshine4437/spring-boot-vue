import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

const loginStore = {
    namespaced: true,
    state: {
        flag: false,
        idx: -1,
        userInfo: [{
            username: "admin",
            password: "admin"
        },{
            username: "user1",
            password: "user1"
        },]

    },
    mutations: {
        Login(state, payload) {
            state.idx = payload;
        },
        LogOut(state) {
            state.idx = -1;
        },
        addMember(state, item){
            state.userInfo.push(item);
        },
    },
    actions: {
    },
    getters: {
        getUserInfo: function (state) {
            return state.userInfo;
        },
        getLogin: function (state) {
            return state.userInfo[state.idx];
        },
    }
}

export default loginStore;
