// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import { initFlatpickr } from "../plugins/flatpickr";

document.addEventListener('turbolinks:load', () => {
  initFlatpickr();
});

Rails.start()
Turbolinks.start()
ActiveStorage.start()


const check_box = document.querySelector("check_box")
const price = document.getElementById("price")

if (check_box) {
  check_box.addEventListener("click", (event) => {
     event.preventDefault();

  })
}
//      const start = document.getElementsByClassName("start")[0].value.split("-");
//     const endy = document.getElementsByClassName("end")[0].value.split("-");
//     const daily = document.getElementsByClassName("card-trip-pricing")[0].innerText.slice(0, -1);

//     const dateStart = new Date(parseInt(start[0], 10), parseInt(start[1], 10), parseInt(start[2], 10));
//     console.log(dateStart);
//     const dateEndy = new Date(parseInt(endy[0], 10), parseInt(endy[1], 10), parseInt(endy[2], 10));
//     console.log(dateEndy);
//     console.log(dateEndy - dateStart);
//     const one_day = 1000 * 60 * 60 * 24;
//     const days = Math.round((dateEndy - dateStart) / one_day);
//     price.innerText = `${days * daily}$`;
//   })
// }
