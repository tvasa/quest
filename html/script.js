window.addEventListener("message", (event) => {
  if (event.data.type === "showQuest") {
    document.getElementById("quest-text").innerText = event.data.description; // Popis úkolu
    document.getElementById("quest-title").innerText = event.data.title; // Název úkolu
    document.querySelector("body").style.display = "flex"; // Ukáže celé UI
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
