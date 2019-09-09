// import { CustomUploader } from './custom_uploader.js'
// alert('hi!');
// $('input#pics-input').on('change', function(event) {
//   alert('hellO!');
//   $("img.placeholder").attr('src',URL.createObjectURL(event.target.files[0]));
// })

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