<template>
    <form v-on:submit.prevent="login">
        <button type="submit">Login</button>
    </form>
</template>

<script>
import { useStore } from 'vuex'

export default {
  setup() {
    const store = useStore()

    const login = () => {
        store.dispatch('login', {
            email: 'jul@ya.ru',
            password: '123'  
        })
    }
    
    return {
        login
    }
  },
}
</script>