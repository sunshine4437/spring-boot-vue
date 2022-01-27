import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

const loginStore = {
    namespaced: true,
    state: {
        user: null,
        toPath: 'sdsds'
    },
    mutations: {
        Login(state, payload) {
            console.log(payload.id)
            let user = {
                user_id: payload.id,
                user_nickname: payload.nickname,
                user_seller: payload.seller
            }
            state.user= user;
            console.log(state.user)
            // localStorage.setItem("key", "value");
        },
        Logout(state) {
            state.user = null;
            // localStorage.clear();
        },
        setPath(state, payload) {
            state.toPath = payload;
        }

    },
    actions: {},
    getters: {
        getLogin: function (state) {
            return state.user;
        },
        getPath(state) {
            return state.toPath;
        }
    }
}

export default loginStore;
