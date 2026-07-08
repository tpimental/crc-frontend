// Vite replacement for webpack's require() of dynamic icon paths
const modules = import.meta.glob("../assets/win95Icons/*", {
  eager: true,
  import: "default",
});

export function icon(name) {
  return modules["../assets/win95Icons/" + name];
}
