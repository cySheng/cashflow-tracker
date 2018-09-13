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
//= require activestorage
//= require turbolinks
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
  button.setAttribute('disabled', true)
  toggleFormButtons = document.querySelectorAll('.toggle-form');
  toggleFormButtons.forEach(element => {
    if (element != button){
      element.removeAttribute('disabled')
      // element.disabled = false;
    }
  })
}