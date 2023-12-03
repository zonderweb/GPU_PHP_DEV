
// input[type="file"]
const preview = document.getElementById('preview-ico');

document.getElementById('image-gpu').onchange = function updateImage() {
  if (this.files && this.files.length) {
    preview.src = window.URL.createObjectURL(this.files[0]);
    preview.setAttribute('width', '100%');
  } else {
    preview.setAttribute('width', '85px');
    preview.src = '/static/images/svg/add_photo.svg';
  }
}