$(document).ready(function() {


  // make element draggable
  $('.drag').draggable({
    // helper:'clone',
    // containment: 'frame',

    // // when first dragged
    // stop: function(ev, ui) {
    //   var pos = $(ui.helper).offset();
    //   objName = '#clonediv' + counter;
    //   $(objName).css({'left': pos.left, 'top': pos.top});
    //   $(objName).removeClass('drag');

    //   // when existing object is dragged
    //   $(objName).draggable({
    //     containment: 'parent',
    //     stop: function(ev, ui) {
    //       var pos = $(ui.helper).offset();
    //       console.log($(this).attr('id'));
    //       console.log(pos.left);
    //       console.log(pos.top);
    //     }
    //   });
    // }
  });

 };