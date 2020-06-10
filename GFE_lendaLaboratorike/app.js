const dglogo = document.querySelectorAll("#dglogo");

for (let i = 0; i < dglogo.length; i++) {
  console.log(`Shkronja ${i} eshte ${dglogo[i].getTotalLength()}`);
}
