var iconSelect;

function addIconsSelect(){
    iconSelect = new IconSelect("my-icon-select");

    var icons = [];
    icons.push({'iconFilePath':'images/icons/1.png', 'iconValue':'1'});
    icons.push({'iconFilePath':'images/icons/2.png', 'iconValue':'2'});
    icons.push({'iconFilePath':'images/icons/3.png', 'iconValue':'3'});

    iconSelect.refresh(icons);

};
