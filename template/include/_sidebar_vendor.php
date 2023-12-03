<?php
$queryTable = "SELECT vendor, url, title, img FROM gpuarticle ORDER BY id DESC";
$queryVendors = select($queryTable);

$menuVendor = '';
for ($i = 0; $i < 4; $i++) {
  $menuVendor .= '<div class="item_menu_vendor">';
  $menuVendor .= '<img class="img-mini-vendor" src="/static/images/vendor/' . $queryVendors[$i]['img'] . '">';
  $menuVendor .= '<div class="menu_info">';
  $menuVendor .= '<a href="/vendor/' . $queryVendors[$i]['url'] . '">' . $queryVendors[$i]['title'] . '</a>';
  $menuVendor .= '</div>';
  $menuVendor .= '</div>';
}
echo $menuVendor;
