// $(window).on('turborinks:load', function() {
// });

$(function(){
  setTimeout("$('.flash').fadeOut('slow')", 3000)
});

$(window).on('turbolinks:load',function() {
  $fileField = $('#file')
  $($fileField).on('change', $fileField, function(e) {
    file = e.target.files[0]
    reader = new FileReader(),
    $preview = $("#imageField");

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
          src: e.target.result,
          width: "100%",
          class: "preview",
          title: file.name
        }));
      };
    })(file);
    reader.readAsDataURL(file);
  });

  // $fileField = $('#file1')
  // $($fileField).on('change', $fileField, function(e) {
  //   file = e.target.files[0]
  //   reader = new FileReader(),
  //   $preview = $("#imageField1");

  //   reader.onload = (function(file) {
  //     return function(e) {
  //       $preview.empty();
  //       $preview.append($('<img>').attr({
  //         src: e.target.result,
  //         width: "100%",
  //         class: "preview",
  //         title: file.name
  //       }));
  //     };
  //   })(file);
  //   reader.readAsDataURL(file);
  // });

  // $fileField = $('#file2')
  // $($fileField).on('change', $fileField, function(e) {
  //   file = e.target.files[0]
  //   reader = new FileReader(),
  //   $preview = $("#imageField2");

  //   reader.onload = (function(file) {
  //     return function(e) {
  //       $preview.empty();
  //       $preview.append($('<img>').attr({
  //         src: e.target.result,
  //         width: "100%",
  //         class: "preview",
  //         title: file.name
  //       }));
  //     };
  //   })(file);
  //   reader.readAsDataURL(file);
  // });

  // $fileField = $('#file3')
  // $($fileField).on('change', $fileField, function(e) {
  //   file = e.target.files[0]
  //   reader = new FileReader(),
  //   $preview = $("#imageField3");

  //   reader.onload = (function(file) {
  //     return function(e) {
  //       $preview.empty();
  //       $preview.append($('<img>').attr({
  //         src: e.target.result,
  //         width: "100%",
  //         class: "preview",
  //         title: file.name
  //       }));
  //     };
  //   })(file);
  //   reader.readAsDataURL(file);
  // });

  // $fileField = $('#file4')
  // $($fileField).on('change', $fileField, function(e) {
  //   file = e.target.files[0]
  //   reader = new FileReader(),
  //   $preview = $("#imageField4");

  //   reader.onload = (function(file) {
  //     return function(e) {
  //       $preview.empty();
  //       $preview.append($('<img>').attr({
  //         src: e.target.result,
  //         width: "100%",
  //         class: "preview",
  //         title: file.name
  //       }));
  //     };
  //   })(file);
  //   reader.readAsDataURL(file);
  // });
  $('#ideaContent1').on('click',function() {
    $('#ideaContentWrap2').css('background', 'white');
    $('#ideaContentWrap3').css('background', 'white');
    $('#ideaContentWrap4').css('background', 'white');
    $('#ideaContentWrap5').css('background', 'white');
    $('#ideaContentWrap1').css('background', '#FFD800');
  });
  $('#ideaContent2').on('click',function() {
    $('#ideaContentWrap1').css('background', 'white');
    $('#ideaContentWrap3').css('background', 'white');
    $('#ideaContentWrap4').css('background', 'white');
    $('#ideaContentWrap5').css('background', 'white');
    $('#ideaContentWrap2').css('background', '#FFD800');
  });
  $('#ideaContent3').on('click',function() {
    $('#ideaContentWrap1').css('background', 'white');
    $('#ideaContentWrap2').css('background', 'white');
    $('#ideaContentWrap4').css('background', 'white');
    $('#ideaContentWrap5').css('background', 'white');
    $('#ideaContentWrap3').css('background', '#FFD800');
  });
  $('#ideaContent4').on('click',function() {
    $('#ideaContentWrap1').css('background', 'white');
    $('#ideaContentWrap2').css('background', 'white');
    $('#ideaContentWrap3').css('background', 'white');
    $('#ideaContentWrap5').css('background', 'white');
    $('#ideaContentWrap4').css('background', '#FFD800');
  });
  $('#ideaContent5').on('click',function() {
    $('#ideaContentWrap1').css('background', 'white');
    $('#ideaContentWrap2').css('background', 'white');
    $('#ideaContentWrap3').css('background', 'white');
    $('#ideaContentWrap4').css('background', 'white');
    $('#ideaContentWrap5').css('background', '#FFD800');
  });
});
