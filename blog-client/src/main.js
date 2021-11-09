import { createApp } from 'vue'
import App from './App.vue'
import './assets/app.css'
import router from './router'
import axios from 'axios'

axios.defaults.baseURL = import.meta.env.API_URL

axios.defaults.withCredentials = true

createApp(App).use(router).mount('#app')
