import Choices from "choices.js";

document.addEventListener('DOMContentLoaded', () => {
    const selectElements = document.querySelectorAll(".select");
    selectElements.forEach((selectElement) => {
        new Choices(selectElement);
    });
});