import createElement from './utils/createElement';

<template>
  <h1 id="a123">Vue works</h1>
</template>

<script>
import createElement from "./utils/createElement";
console.log("holis");

const variable = {
  render() {
    return <div>Vue 3.0</div>
  }
}

const a123 = document.querySelector("#a123");

console.log(a123);

a123.appendChild(variable);

export default {};
</script>

<style>
h1 {
  background: #ff6200 !important;
}
</style>
