// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks
//= require datatables
//= require_tree .

document.addEventListener('DOMContentLoaded', function(event){
  // const triggerIncomeFormButton = document.getElementsById("trigger-income-form");
  // const triggerExpenseFormButton = document.getElementsById("trigger-expense-form");
  const toggleFormButtons = document.querySelectorAll('[data-toggle-form]');

  toggleFormButtons.forEach(element => {
    element.addEventListener("click", toggleFormVisibility);
  })
})

function toggleFormVisibility() {
  const formId = '#' + this.dataset.toggleForm;
  const form = document.querySelector(formId);
  toggleButton(this);
  // this.disabled = 'true';
  form.style.display = 'block';

  otherForm = document.querySelectorAll(`.form:not(${formId})`)[0];
  otherForm.style.display = 'none';
}

function toggleButton(button) {
  // button.disabled = true;
  button.setAttribute('disabled', true);
  button.classList.add('is-focused');

  toggleFormButtons = document.querySelectorAll('.toggle-form');
  toggleFormButtons.forEach(element => {
    if (element != button){
      element.removeAttribute('disabled');
      element.classList.remove('is-focused');
      // element.disabled = false;
    }
  })
}

document.addEventListener('DOMContentLoaded', () => {

  // Get all "navbar-burger" elements
  const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Check if there are any navbar burgers
  if ($navbarBurgers.length > 0) {

    // Add a click event on each of them
    $navbarBurgers.forEach( el => {
      el.addEventListener('click', () => {

        // Get the target from the "data-target" attribute
        const target = el.dataset.target;
        const $target = document.getElementById(target);

        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');

      });
    });
  }

});