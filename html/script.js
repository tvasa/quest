window.addEventListener("message", (event) => {
  const data = event.data;

  if (data.action === "showQuest") {
    document.getElementById("quest-title").textContent = data.title;
    document.getElementById("quest-text").textContent = data.description;

    const container = document.getElementById("request-images");
    container.innerHTML = "";

    if (Array.isArray(data.request)) {
      data.request.forEach((item) => {
        const img = document.createElement("img");
        img.src = `https://cfx-nui-rsg-inventory/html/images/${item.item}.png`;
        img.alt = item.item;
        img.title = `${item.quantity}x ${item.item}`;
        container.appendChild(img);
      });
    }

    document.body.style.visibility = "visible";
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

  // Skrýt UI po kliknutí na tlačítko
  document.querySelector("body").style.visibility = "hidden";
});
