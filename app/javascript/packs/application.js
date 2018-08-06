import "bootstrap";
import { initMap } from '../components/map';
import { autocomplete } from '../components/autocomplete';
import { initFlash } from '../components/flash';
import { initUpdateNavbarOnScroll } from '../components/navbar';

initUpdateNavbarOnScroll();
initMap();
autocomplete();
initFlash();
