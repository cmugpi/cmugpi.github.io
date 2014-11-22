;(function () {
  function fixTOC() {
    // Create ui vertical menu, fill it with old links,
    // remove li tags, and add .item to a tags
    var $toc = $('<div class="ui fixed vertical menu"></div>');
    $toc.html($('#markdown-toc').html());
    $toc.find('a').unwrap().addClass('item');
    $('#markdown-toc').replaceWith($toc);
    // TODO support nested TOC
  }

  $(document).ready(function main() {
    fixTOC();
  });
})();
