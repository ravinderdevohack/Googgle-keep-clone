// console.log(1)
var openButton = document.querySelector('.openbtn')
var mySideBar = document.querySelector('#mySidebar')
var mainDiv = document.querySelector('#main-div')
var mainNew = document.querySelector('#main-new')
var count = 1

openButton.addEventListener('click', function(){
  if (count%2 != 0){
    mySideBar.style.width = "250px";
    if (mainDiv != null){
      mainDiv.style.marginLeft = "250px";
    }
    count = count+1
  console.log(count)
  }else if (count%2 == 0){
    mySideBar.style.width = "0";
    if (mainDiv != null){
      mainDiv.style.marginLeft= "0";
    }
    count +=1
  // console.log(count)
  }

})

var child = document.querySelector('.child')
console.log(child)


for(i=0; i<mySideBar.childElementCount; i++){
  mySideBar.children[i].addEventListener('click', view)
}

function view(e){
  var name = e.target.id
  var name1 = `#${name}-view`
  console.log(name1)
  $('#main-div').children('.child').children().css("display","none")
  $('#main-div').children('.child').children(`${name1}`).css("display", "block")
  // $('#main-div').children('.note').css("display", "block")

}

  
