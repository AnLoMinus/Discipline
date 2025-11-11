document.addEventListener("DOMContentLoaded", () => {
  const button = document.getElementById("actionButton");
  if (!button) return;

  button.addEventListener("click", () => {
    window.open("https://github.com/AnLoMinus/Discipline/issues", "_blank", "noopener,noreferrer");
  });

  console.info("ברוך הבא לפרויקט Discipline — מוכנים להתחיל משמעת?");
});

