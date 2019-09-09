// import { CustomUploader } from './custom_uploader.js'

$('input#pics-input').on('change', function(event) {
  console.log(event.target);
  var place = document.getElementsByClassName('placeholder')[0];
  // удаляем старые фотки
  while (place.firstChild) {
    place.removeChild(place.firstChild);
  }
  //показываем новые
  // Array.from(event.target.files).forEach( file => {
  for (var i = 0; i < event.target.files.length; i++) {
    console.log(event.target.files[i]);
    
    // $("img.placeholder").attr('src',URL.createObjectURL(file));
    var newimg = document.createElement("img");
    var nediv = document.createElement("div");
    var newbutton = document.createElement("button");
    nediv.setAttribute("class", "container");
    newimg.setAttribute("src", URL.createObjectURL(event.target.files[i]));
    newimg.setAttribute("id", "image_" + i);
    newbutton.setAttribute("id", "button" + i);
    newbutton.setAttribute("class", "btn");
    newbutton.innerHTML = "del";
    place.appendChild(nediv);
    nediv.appendChild(newimg);
    nediv.appendChild(newbutton);
    newbutton.addListener('click', function(e) {
      console.log(e);
    })
  }
})

$('button.btn').on('Click', function(event) {
  console.log(event);
})
// Handle change, e.g. User attaches a file
const inputs = Array.from(document.querySelectorAll('.custom-file-input'))
inputs.forEach(input => {
  input.addEventListener('change', event => {
    Array.from(input.files).forEach( file => {
      const uploader = new CustomUploader(input, file)
      uploader.start(file)
      console.log('dawfwafwf');
    })
    // clear the selected files from the input
    input.value = null
  })
})

addEventListener("direct-upload:initialize", event => {
  const { target, detail } = event
  const { id, file } = detail
  target.insertAdjacentHTML("beforebegin", `
    <div id="direct-upload-${id}" class="direct-upload direct-upload--pending">
      <div id="direct-upload-progress-${id}" class="direct-upload__progress" style="width: 0%"></div>
      <span class="direct-upload__filename">${file.name}</span>
    </div>
  `)
})
 
addEventListener("direct-upload:start", event => {
  const { id } = event.detail
  const element = document.getElementById(`direct-upload-${id}`)
  element.classList.remove("direct-upload--pending")
})
 
addEventListener("direct-upload:progress", event => {
  const { id, progress } = event.detail
  const progressElement = document.getElementById(`direct-upload-progress-${id}`)
  progressElement.style.width = `${progress}%`
})
 
addEventListener("direct-upload:error", event => {
  event.preventDefault()
  const { id, error } = event.detail
  const element = document.getElementById(`direct-upload-${id}`)
  element.classList.add("direct-upload--error")
  element.setAttribute("title", error)
})
 
addEventListener("direct-upload:end", event => {
  const { id } = event.detail
  const element = document.getElementById(`direct-upload-${id}`)
  element.classList.add("direct-upload--complete")
})