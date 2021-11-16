<script>
import { ref } from 'vue'

export default {
  setup(props, context) {
    const greeting = ref("Hello")

    return () =>
      context.slots.default({
        greeting
      })
  },
};
</script>
