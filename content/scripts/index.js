"use strict";

function onMenuToggleClicked(event) {
	var mainNav = document.getElementsByClassName("nav--main")[0];
	var pageWrapper = document.getElementsByClassName("page-wrapper")[0];
	if (!this.classList.contains("btn--pressed")) {
		mainNav.classList.add("nav--visible");
		pageWrapper.classList.add("page-wrapper--hidden");
		this.classList.add("btn--pressed");
	} else {
		mainNav.classList.remove("nav--visible");
		pageWrapper.classList.remove("page-wrapper--hidden");
		this.classList.remove("btn--pressed");
	}
}

document.addEventListener("DOMContentLoaded", function() {
	var menuToggle = document.getElementById("menu-toggle");
	menuToggle.addEventListener("click", onMenuToggleClicked);
});
