// .onmouseover

// Верхнє випадаюче меню

document.querySelector('.root-nav').onclick = function (event) {
  if (event.target.nodeName !== 'SPAN') return;
  closeAllSubMenu(event.target.nextElementSibling);
  event.target.classList.add('sub-menu-active-span');
  event.target.nextElementSibling.classList.toggle('sub-menu-active');
}

function closeAllSubMenu(current = null) {
  let parents = [];
  if (current) {
    let currentParrent = current.parentNode;
    while (currentParrent) {
      if (currentParrent.classList.contains('root-nav')) break;
      if (currentParrent.nodeName === 'UL') parents.push(currentParrent);
      currentParrent = currentParrent.parentNode;
    }
  }

  const subMenu = document.querySelectorAll('.root-nav ul');
  Array.from(subMenu).forEach(item => {
    if (item != current && !parents.includes(item)) {
      item.classList.remove('sub-menu-active');
      if (item.previousElementSibling.nodeName === 'SPAN') {
        item.previousElementSibling.classList.remove('sub-menu-active-span');
      }
    }
  });
}

document.querySelector('.root-nav').onmouseleave = closeAllSubMenu;