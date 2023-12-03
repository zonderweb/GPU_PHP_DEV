
// input[type="file"]
const image = document.getElementById('image-gpu');
const preview = document.getElementById('preview-ico');

if (image) {
  image.addEventListener('change', function updateImage() {
    if (this.files && this.files.length) {
      preview.src = window.URL.createObjectURL(this.files[0]);
      preview.setAttribute('width', '100%');
    } else {
      preview.setAttribute('width', '85px');
      preview.src = '/static/images/svg/add_photo.svg';
    }
  });
}