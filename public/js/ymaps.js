function init() {
    let map = new ymaps.Map("map", {
        center: [56.83401132997523,60.6163609193315],
        zoom: 15,
    });

// map.controls.remove('geolocationControl'); // геолокация
// map.controls.remove('trafficControl'); // контроль трафика
// map.controls.remove('typeSelector'); // тип
// map.controls.remove('fullscreenControl'); // кнопка перехода в полноэкранный режим
// map.controls.remove('zoomControl'); // контрол зуммирования
// map.controls.remove('rulerControl'); // контрол правил
// map.behaviors.disable(['scrollZoom']); // скролл карты

map.controls.remove('searchControl'); // удаляем поиск
var searchControl = new ymaps.control.SearchControl({
    options: {
        provider: 'yandex#search'
    }
});
map.controls.add(searchControl);
    searchControl.search('метро');
}

ymaps.ready(init)
