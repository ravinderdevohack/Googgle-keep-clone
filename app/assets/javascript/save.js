
var id = document.getElementById('note_id')
var description = document.getElementById('note_description')
var title = document.getElementById('note_title')
var pinned = document.getElementById('note_pinned')
var archive = document.getElementById('note_archive')
var date = document.getElementById('note_date')
var time = document.getElementById('note_time')
var image = document.getElementById('note_image')
// console.log(pinnedValue)

var click = document.querySelectorAll('.click')

for(i=0; i< click.length; i++){
  click[i].addEventListener('change', function(){
    var pinnedValue = parseInt(pinned.value)
    var archiveValue = parseInt(archive.value)

    if (id.value == ''){
      console.log('noy null')
      $.ajax({
        url: `/create`,
        type: 'POST',
        data: {
          'note[title]': title.value,
          'note[description]': description.value,
          'note[date]': date.value,
          'note[time]': time.value,
          'note[pinned]': pinnedValue,
          'note[archive]': archiveValue
        },
        success: function(res){
          id.value = res
        }

      })

    } else {
      $.ajax({
        url: `/update`,
        type: 'POST',
        data: {
          'note[id]': id.value,
          'note[title]': title.value,
          'note[description]': description.value,
          'note[date]': date.value,
          'note[time]': time.value,
          'note[pinned]': pinnedValue,
          'note[archive]': archiveValue
        },
        success: function(res){
          console.log('success')
        }
      })
      
    }
  })

}


// ?description=${description.value}+&id=${id.value}+&title=${title.value}+&date=${date.value}+&time=${time.value}
// ?description=${description.value}+&title=${title.value}+&date=${date.value}+&time=${time.value}+&pinned=${pinnedValue}
