var allPowers = document.querySelectorAll(".power-choice");

for (var i = 0; i < allPowers.length; i++) {
  allPowers[i].addEventListener('click', function(){
    if (this.classList) {
	  this.classList.toggle('active');
	} 
  });
}
