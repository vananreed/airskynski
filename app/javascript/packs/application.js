import "./application.css";
import "bootstrap";
import { initMap } from '../components/map';
import { autocomplete } from '../components/autocomplete';
import { initFlash } from '../components/flash';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { toggleDatepicker } from "../components/booking_form"

initUpdateNavbarOnScroll();
initMap();
autocomplete();
initFlash();
toggleDatepicker();
