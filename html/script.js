window.addEventListener("message", (event) => {
  if (event.data.type === "showQuest") {
    document.getElementById("quest-text").innerText = event.data.text;
    document.querySelector("body").style.display = "flex"; // Ukáže tělo UI
  }
});

document.getElementById("close-button").addEventListener("click", function () {
  fetch(`https://${GetParentResourceName()}/closeUI`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json; charset=UTF-8",
    },
    body: JSON.stringify({}),
  });

  document.querySelector("body").style.display = "none"; // Skryje celé UI
});
