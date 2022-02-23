
var id = document.getElementById('note_id')
var description = document.getElementById('note_description')
var title = document.getElementById('note_title')
var pinned = document.getElementById('note_pinned')
var archive = document.getElementById('note_archive')
var date = document.getElementById('note_date')
var time = document.getElementById('note_time')
var image = document.getElementById('note_image')
// console.log(id)

var click = document.querySelectorAll('.click')
console.log(click)
for(i=0; i< click.length; i++){
  click[i].addEventListener('change', function(){
    console.log(description.value)
    if (id.value == ''){
      console.log('noy null')
      $.ajax({
        url: `/create?description=${description.value}+&title=${title.value}+&date=${date.value}+&time=${time.value}`,
        type: 'POST',
        success: function(res){
          id.value = res
        }

      })

    } else {
      $.ajax({
        url: `/update?description=${description.value}+&id=${id.value}+&title=${title.value}+&date=${date.value}+&time=${time.value}`,
        type: 'POST',
        success: function(res){
          console.log('success')
        }
      })
      
    }
  })

}
