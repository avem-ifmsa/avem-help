(function() {
	"use strict";

	function onMenuToggleClicked(event) {
		var mainNav = document.getElementById("main-nav");
		var pageWrapper = document.getElementById("page-wrapper");
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
})();
