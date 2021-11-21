import flatpickr from "flatpickr";

const initFlatpickr = () => {
  // arguments: a string with a CSS selector and an object with options
  flatpickr(".datepicker", {});
}

export { initFlatpickr };