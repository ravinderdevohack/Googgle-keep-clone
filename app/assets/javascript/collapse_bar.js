console.log(1)
openButton = document.querySelector('.openbtn')
  var count = 1
openButton.addEventListener('click', function(){
  if (count%2 != 0){
    document.getElementById("mySidebar").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    count = count+1
  console.log(count)
  }else if (count%2 == 0){
    document.getElementById("mySidebar").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    count +=1
  console.log(count)
  }

})

