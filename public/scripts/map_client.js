$(document).ready(function() {

  const createPinListElement = function(pinObj) {

    const $pinListElements = $(`
    <li><a href="/maps/${newUrlMapId}">${pinObj.marker_title}</a></li>
    <br>
    `);

    return $pinListElements;
  };

  // gets map ID off the url accessing current page
  let urlMapId = '';
  if (window.location.href.slice(-1) === '?') {
    urlMapId += window.location.href.slice(-2);
  } else {urlMapId += window.location.href.slice(-1);}

  toString(urlMapId);
  let newUrlMapId = urlMapId.replace('?', '');

  const renderMarkerList = () => {
    $.ajax({
      url: `/markers/${newUrlMapId}/fetch`,
      method: 'GET',
    })
      .then((data) => {
        $('.list').empty();
        data.forEach((marker) => {
          const $marker = createPinListElement(marker);
          $('.list').prepend($marker);
        });
      })
      .catch((err) => {
        console.log(err);
      });
  };


  renderMarkerList();

});
