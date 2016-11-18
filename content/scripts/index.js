(function() {
	"use strict";

	function onMenuToggleClicked(event) {
		var sideNav = document.getElementById("side-nav");
		var pageWrapper = document.getElementById("page-wrapper");
		if (!this.classList.contains("is-btn-pressed")) {
			pageWrapper.classList.add("is-menu-shown");
			sideNav.classList.add("is-menu-shown");
			this.classList.add("is-btn-pressed");
		} else {
			pageWrapper.classList.remove("is-menu-shown");
			sideNav.classList.remove("is-menu-shown");
			this.classList.remove("is-btn-pressed");
		}
	}

	document.addEventListener("DOMContentLoaded", function() {
		var menuToggle = document.getElementById("menu-toggle");
		menuToggle.addEventListener("click", onMenuToggleClicked);
	});
})();
