$('input#pics-input').on('change', function(event) {
  var place = document.getElementsByClassName('placeholder')[0];
  // удаляем старые фотки
  while (place.firstChild) {
    place.removeChild(place.firstChild);
  }
  //показываем новые
  var arr = Array.from(event.target.files);
  console.log(place);
  for (var i = 0; i < event.target.files.length; i++) {
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
    newbutton.addEventListener('click', function(e) {
      $(this).parent('div').remove();
      arr.splice(this.id.slice(-1),1);
      const dT = new ClipboardEvent('').clipboardData || // Firefox < 62 workaround exploiting https://bugzilla.mozilla.org/show_bug.cgi?id=1422655
      new DataTransfer(); // specs compliant (as of March 2018 only Chrome)
      for (var j = 0; j < arr.length; j++) {
        dT.items.add(arr[j]);
      }
      console.log(dT.files);
      event.target.files = dT.files;
    })
  }
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