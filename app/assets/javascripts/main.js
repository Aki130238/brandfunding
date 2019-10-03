$(function(){
  setTimeout("$('.flash').fadeOut('slow')", 3000)
});

$(function(){
  $('#ideaNext1').on('click', function() {
    $('.ideaTab2').trigger('click');
  });
  $('#ideaNext2').on('click', function() {
    $('.ideaTab3').trigger('click');
  });
  $('#ideaNext3').on('click', function() {
    $('.ideaTab4').trigger('click');
  });
  $('#ideaNext4').on('click', function() {
    $('.ideaTab5').trigger('click');
  });
  $('#ideaNext5').on('click', function() {
    $('.ideaTab6').trigger('click');
  });
  $('#ideaBack1').on('click', function() {
    $('.ideaTab1').trigger('click');
  });
  $('#ideaBack2').on('click', function() {
    $('.ideaTab2').trigger('click');
  });
  $('#ideaBack3').on('click', function() {
    $('.ideaTab3').trigger('click');
  });
  $('#ideaBack4').on('click', function() {
    $('.ideaTab4').trigger('click');
  });
  $('#ideaBack5').on('click', function() {
    $('.ideaTab5').trigger('click');
  });
});

$(function(){
  $('#projectNext1').on('click', function() {
    $('.projectTab2').trigger('click');
  });
  $('#projectNext2').on('click', function() {
    $('.projectTab3').trigger('click');
  });
  $('#projectNext3').on('click', function() {
    $('.projectTab4').trigger('click');
  });
  $('#projectNext4').on('click', function() {
    $('.projectTab5').trigger('click');
  });
  $('#projectNext5').on('click', function() {
    $('.projectTab6').trigger('click');
  });
  $('#projectBack1').on('click', function() {
    $('.projectTab1').trigger('click');
  });
  $('#projectBack2').on('click', function() {
    $('.projectTab2').trigger('click');
  });
  $('#projectBack3').on('click', function() {
    $('.projectTab3').trigger('click');
  });
  $('#projectBack4').on('click', function() {
    $('.projectTab4').trigger('click');
  });
  $('#projectBack5').on('click', function() {
    $('.projectTab5').trigger('click');
  });
})

// $(document).on('turbolinks:load',function() {
$(function(){
  $fileField = $('#fileReturn')
  $($fileField).on('change', $fileField, function(e) {
    file = e.target.files[0]
    reader = new FileReader(),
    $preview = $('#imageFieldReturn');

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
          src: e.target.result,
          width: '100%',
          class: 'preview',
          title: file.name
        }));
      };
    })(file);
    reader.readAsDataURL(file);
  });

  $fileField2 = $('#fileReturn2')
  $($fileField2).on('change', $fileField, function(e) {
    file = e.target.files[0]
    reader = new FileReader(),
    $preview = $('#imageFieldReturn2');

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
          src: e.target.result,
          width: '100%',
          class: 'preview',
          title: file.name
        }));
      };
    })(file);
    reader.readAsDataURL(file);
  });

  $fileField3 = $('#file')
  $($fileField3).on('change', $fileField, function(e) {
    file = e.target.files[0]
    reader = new FileReader(),
    $preview = $('#imageField');

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
          src: e.target.result,
          width: '100%',
          class: 'preview',
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
  //   $preview = $('#imageField1');

  //   reader.onload = (function(file) {
  //     return function(e) {
  //       $preview.empty();
  //       $preview.append($('<img>').attr({
  //         src: e.target.result,
  //         width: '100%',
  //         class: 'preview',
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
  //   $preview = $('#imageField2');

  //   reader.onload = (function(file) {
  //     return function(e) {
  //       $preview.empty();
  //       $preview.append($('<img>').attr({
  //         src: e.target.result,
  //         width: '100%',
  //         class: 'preview',
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
  //   $preview = $('#imageField3');

  //   reader.onload = (function(file) {
  //     return function(e) {
  //       $preview.empty();
  //       $preview.append($('<img>').attr({
  //         src: e.target.result,
  //         width: '100%',
  //         class: 'preview',
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
  //   $preview = $('#imageField4');

  //   reader.onload = (function(file) {
  //     return function(e) {
  //       $preview.empty();
  //       $preview.append($('<img>').attr({
  //         src: e.target.result,
  //         width: '100%',
  //         class: 'preview',
  //         title: file.name
  //       }));
  //     };
  //   })(file);
  //   reader.readAsDataURL(file);
  // });#FFD800

  $(function() {
    let bgIdea = '#FFD800';
    // // $('#ideaTabWrap1').css('background', bgIdea);
    // $('.ideaTab1').on('click',function() {
    //   $(this).css('background',bgIdea);
    //   $('.ideaTab2').css('background', '');
    //   $('.ideaTab3').css('background', '');
    //   $('.ideaTab4').css('background', '');
    //   $('.ideaTab5').css('background', '');
    //   $('.ideaTab6').css('background', '');
    //   $('#ideaTabWrap1').css('background', bgIdea);
    //   $('#ideaTabWrap2').css('background', '');
    //   $('#ideaTabWrap3').css('background', '');
    //   $('#ideaTabWrap4').css('background', '');
    //   $('#ideaTabWrap5').css('background', '');
    //   $('#ideaTabWrap6').css('background', '');
    // });
    // $('.ideaTab2').on('click',function() {
    //   $(this).css('background',bgIdea);
    //   $('.ideaTab1').css('background', '');
    //   $('.ideaTab3').css('background', '');
    //   $('.ideaTab4').css('background', '');
    //   $('.ideaTab5').css('background', '');
    //   $('.ideaTab6').css('background', '');
    //   $('#ideaTabWrap2').css('background', '');
    //   $('#ideaTabWrap2').css('background', bgIdea);
    //   $('#ideaTabWrap3').css('background', '');
    //   $('#ideaTabWrap4').css('background', '');
    //   $('#ideaTabWrap5').css('background', '');
    //   $('#ideaTabWrap6').css('background', '');
    // });
    // $('.ideaTab3').on('click',function() {
    //   $(this).css('background',bgIdea);
    //   $('.ideaTab1').css('background', '');
    //   $('.ideaTab2').css('background', '');
    //   $('.ideaTab4').css('background', '');
    //   $('.ideaTab5').css('background', '');
    //   $('.ideaTab6').css('background', '');
    //   $('#ideaTabWrap1').css('background', '');
    //   $('#ideaTabWrap2').css('background', '');
    //   $('#ideaTabWrap3').css('background', bgIdea);
    //   $('#ideaTabWrap4').css('background', '');
    //   $('#ideaTabWrap5').css('background', '');
    //   $('#ideaTabWrap6').css('background', '');
    // });
    // $('.ideaTab4').on('click',function() {
    //   $(this).css('background',bgIdea);
    //   $('.ideaTab1').css('background', '');
    //   $('.ideaTab2').css('background', '');
    //   $('.ideaTab3').css('background', '');
    //   $('.ideaTab5').css('background', '');
    //   $('.ideaTab6').css('background', '');
    //   $('#ideaTabWrap1').css('background', '');
    //   $('#ideaTabWrap2').css('background', '');
    //   $('#ideaTabWrap3').css('background', '');
    //   $('#ideaTabWrap4').css('background', bgIdea);
    //   $('#ideaTabWrap5').css('background', '');
    //   $('#ideaTabWrap6').css('background', '');
    // });
    // $('.ideaTab5').on('click',function() {
    //   $(this).css('background',bgIdea);
    //   $('.ideaTab1').css('background', '');
    //   $('.ideaTab2').css('background', '');
    //   $('.ideaTab3').css('background', '');
    //   $('.ideaTab4').css('background', '');
    //   $('.ideaTab6').css('background', '');
    //   $('#ideaTabWrap1').css('background', '');
    //   $('#ideaTabWrap2').css('background', '');
    //   $('#ideaTabWrap3').css('background', '');
    //   $('#ideaTabWrap4').css('background', '');
    //   $('#ideaTabWrap5').css('background', bgIdea);
    //   $('#ideaTabWrap6').css('background', '');
    // });
    // $('.ideaTab6').on('click',function() {
    //   $(this).css('background',bgIdea);
    //   $('.ideaTab1').css('background', '');
    //   $('.ideaTab2').css('background', '');
    //   $('.ideaTab3').css('background', '');
    //   $('.ideaTab4').css('background', '');
    //   $('.ideaTab5').css('background', '');
    //   $('#ideaTabWrap1').css('background', '');
    //   $('#ideaTabWrap2').css('background', '');
    //   $('#ideaTabWrap3').css('background', '');
    //   $('#ideaTabWrap4').css('background', '');
    //   $('#ideaTabWrap5').css('background', '');
    //   $('#ideaTabWrap6').css('background', bgIdea);
    // });


    $('#ideaImageWrap1').on('click',function() {
      $('#idea_product_image_似た物がある').prop('checked', true);
    });
    $('#ideaImageWrap2').on('click',function() {
      $('#idea_product_image_写真や絵がある').prop('checked', true);
    });
    $('#ideaImageWrap3').on('click',function() {
      $('#idea_product_image_型紙がある').prop('checked', true);
    });
    $('#ideaImageWrap4').on('click',function() {
      $('#idea_product_image_リメイクお直し').prop('checked', true);
    });
    $('#ideaImageWrap5').on('click',function() {
      $('#idea_product_image_相談したい').prop('checked', true);
    });
    $('#ideaImageWrap1').on('click',function() {
      $('#ideaImageWrap2').css('background', 'white');
      $('#ideaImageWrap3').css('background', 'white');
      $('#ideaImageWrap4').css('background', 'white');
      $('#ideaImageWrap5').css('background', 'white');
      $('#ideaImageWrap1').css('background', bgIdea);
    });
    $('#ideaImageWrap2').on('click',function() {
      $('#ideaImageWrap1').css('background', 'white');
      $('#ideaImageWrap3').css('background', 'white');
      $('#ideaImageWrap4').css('background', 'white');
      $('#ideaImageWrap5').css('background', 'white');
      $('#ideaImageWrap2').css('background', bgIdea);
    });
    $('#ideaImageWrap3').on('click',function() {
      $('#ideaImageWrap1').css('background', 'white');
      $('#ideaImageWrap2').css('background', 'white');
      $('#ideaImageWrap4').css('background', 'white');
      $('#ideaImageWrap5').css('background', 'white');
      $('#ideaImageWrap3').css('background', bgIdea);
    });
    $('#ideaImageWrap4').on('click',function() {
      $('#ideaImageWrap1').css('background', 'white');
      $('#ideaImageWrap2').css('background', 'white');
      $('#ideaImageWrap3').css('background', 'white');
      $('#ideaImageWrap5').css('background', 'white');
      $('#ideaImageWrap4').css('background', bgIdea);
    });
    $('#ideaImageWrap5').on('click',function() {
      $('#ideaImageWrap1').css('background', 'white');
      $('#ideaImageWrap2').css('background', 'white');
      $('#ideaImageWrap3').css('background', 'white');
      $('#ideaImageWrap4').css('background', 'white');
      $('#ideaImageWrap5').css('background', bgIdea);
    });

    $(function(){
      $('#ideaUserWrap1').on('click', function (evt) {
        $('#idea_idea_user_ids_1').prop('checked', !$('#idea_idea_user_ids_1').prop('checked'));
        // $(this).toggleClass('bgIdea');
      });
      $('#ideaUserWrap2').on('click', function (evt) {
        $('#idea_idea_user_ids_2').prop('checked', !$('#idea_idea_user_ids_2').prop('checked'));
        // $(this).toggleClass('bgIdea');
      });
      $('#ideaUserWrap3').on('click', function (evt) {
        $('#idea_idea_user_ids_3').prop('checked', !$('#idea_idea_user_ids_3').prop('checked'));
        // $(this).toggleClass('bgIdea');
      });
      $('#ideaUserWrap4').on('click', function (evt) {
        $('#idea_idea_user_ids_4').prop('checked', !$('#idea_idea_user_ids_4').prop('checked'));
        // $(this).toggleClass('bgIdea');
      });
    });

    $('#ideaCategoryWrap1').on('click',function() {
      $('#idea_idea_category_洋服').prop('checked', true);
    });
    $('#ideaCategoryWrap2').on('click',function() {
      $('#idea_idea_category_和服').prop('checked', true);
    });
    $('#ideaCategoryWrap3').on('click',function() {
      $('#idea_idea_category_ドレス衣装').prop('checked', true);
    });
    $('#ideaCategoryWrap4').on('click',function() {
      $('#idea_idea_category_作業服ユニフォーム').prop('checked', true);
    });
    $('#ideaCategoryWrap5').on('click',function() {
      $('#idea_idea_category_バッグ帽子').prop('checked', true);
    });
    $('#ideaCategoryWrap6').on('click',function() {
      $('#idea_idea_category_小物').prop('checked', true);
    });
    $('#ideaCategoryWrap7').on('click',function() {
      $('#idea_idea_category_インテリア').prop('checked', true);
    });
    $('#ideaCategoryWrap8').on('click',function() {
      $('#idea_idea_category_その他').prop('checked', true);
    });
    $('#ideaCategoryWrap1').on('click',function() {
      $('#ideaCategoryWrap1').css('background', bgIdea);
      $('#ideaCategoryWrap2').css('background', 'white');
      $('#ideaCategoryWrap3').css('background', 'white');
      $('#ideaCategoryWrap4').css('background', 'white');
      $('#ideaCategoryWrap5').css('background', 'white');
      $('#ideaCategoryWrap6').css('background', 'white');
      $('#ideaCategoryWrap7').css('background', 'white');
      $('#ideaCategoryWrap8').css('background', 'white');
    });
    $('#ideaCategoryWrap2').on('click',function() {
      $('#ideaCategoryWrap1').css('background', 'white');
      $('#ideaCategoryWrap2').css('background', bgIdea);
      $('#ideaCategoryWrap3').css('background', 'white');
      $('#ideaCategoryWrap4').css('background', 'white');
      $('#ideaCategoryWrap5').css('background', 'white');
      $('#ideaCategoryWrap6').css('background', 'white');
      $('#ideaCategoryWrap7').css('background', 'white');
      $('#ideaCategoryWrap8').css('background', 'white');
    });
    $('#ideaCategoryWrap3').on('click',function() {
      $('#ideaCategoryWrap1').css('background', 'white');
      $('#ideaCategoryWrap2').css('background', 'white');
      $('#ideaCategoryWrap3').css('background', bgIdea);
      $('#ideaCategoryWrap4').css('background', 'white');
      $('#ideaCategoryWrap5').css('background', 'white');
      $('#ideaCategoryWrap6').css('background', 'white');
      $('#ideaCategoryWrap7').css('background', 'white');
      $('#ideaCategoryWrap8').css('background', 'white');
    });
    $('#ideaCategoryWrap4').on('click',function() {
      $('#ideaCategoryWrap1').css('background', 'white');
      $('#ideaCategoryWrap2').css('background', 'white');
      $('#ideaCategoryWrap3').css('background', 'white');
      $('#ideaCategoryWrap4').css('background', bgIdea);
      $('#ideaCategoryWrap5').css('background', 'white');
      $('#ideaCategoryWrap6').css('background', 'white');
      $('#ideaCategoryWrap7').css('background', 'white');
      $('#ideaCategoryWrap8').css('background', 'white');
    });
    $('#ideaCategoryWrap5').on('click',function() {
      $('#ideaCategoryWrap1').css('background', 'white');
      $('#ideaCategoryWrap2').css('background', 'white');
      $('#ideaCategoryWrap3').css('background', 'white');
      $('#ideaCategoryWrap4').css('background', 'white');
      $('#ideaCategoryWrap5').css('background', bgIdea);
      $('#ideaCategoryWrap6').css('background', 'white');
      $('#ideaCategoryWrap7').css('background', 'white');
      $('#ideaCategoryWrap8').css('background', 'white');
    });
    $('#ideaCategoryWrap6').on('click',function() {
      $('#ideaCategoryWrap1').css('background', 'white');
      $('#ideaCategoryWrap2').css('background', 'white');
      $('#ideaCategoryWrap3').css('background', 'white');
      $('#ideaCategoryWrap4').css('background', 'white');
      $('#ideaCategoryWrap5').css('background', 'white');
      $('#ideaCategoryWrap6').css('background', bgIdea);
      $('#ideaCategoryWrap7').css('background', 'white');
      $('#ideaCategoryWrap8').css('background', 'white');
    });
    $('#ideaCategoryWrap7').on('click',function() {
      $('#ideaCategoryWrap1').css('background', 'white');
      $('#ideaCategoryWrap2').css('background', 'white');
      $('#ideaCategoryWrap3').css('background', 'white');
      $('#ideaCategoryWrap4').css('background', 'white');
      $('#ideaCategoryWrap5').css('background', 'white');
      $('#ideaCategoryWrap6').css('background', 'white');
      $('#ideaCategoryWrap7').css('background', bgIdea);
      $('#ideaCategoryWrap8').css('background', 'white');
    });
    $('#ideaCategoryWrap8').on('click',function() {
      $('#ideaCategoryWrap1').css('background', 'white');
      $('#ideaCategoryWrap2').css('background', 'white');
      $('#ideaCategoryWrap3').css('background', 'white');
      $('#ideaCategoryWrap4').css('background', 'white');
      $('#ideaCategoryWrap5').css('background', 'white');
      $('#ideaCategoryWrap6').css('background', 'white');
      $('#ideaCategoryWrap7').css('background', 'white');
      $('#ideaCategoryWrap8').css('background', bgIdea);
    });

    $('#ideaCategoryDetailsWrap1').on('click',function() {
      $('#idea_idea_category_details_ジャケットアウター').prop('checked', true);
    });
    $('#ideaCategoryDetailsWrap2').on('click',function() {
      $('#idea_idea_category_details_トップスシャツ').prop('checked', true);
    });
    $('#ideaCategoryDetailsWrap3').on('click',function() {
      $('#idea_idea_category_details_ボトムススカート').prop('checked', true);
    });
    $('#ideaCategoryDetailsWrap4').on('click',function() {
      $('#idea_idea_category_details_ワンピースオーバーオール').prop('checked', true);
    });
    $('#ideaCategoryDetailsWrap5').on('click',function() {
      $('#idea_idea_category_details_スーツタキシード').prop('checked', true);
    });
    $('#ideaCategoryDetailsWrap6').on('click',function() {
      $('#idea_idea_category_details_その他').prop('checked', true);
    });
    $('#ideaCategoryDetailsWrap1').on('click',function() {
      $('#ideaCategoryDetailsWrap1').css('background', bgIdea);
      $('#ideaCategoryDetailsWrap2').css('background', 'white');
      $('#ideaCategoryDetailsWrap3').css('background', 'white');
      $('#ideaCategoryDetailsWrap4').css('background', 'white');
      $('#ideaCategoryDetailsWrap5').css('background', 'white');
      $('#ideaCategoryDetailsWrap6').css('background', 'white');
    });
    $('#ideaCategoryDetailsWrap2').on('click',function() {
      $('#ideaCategoryDetailsWrap1').css('background', 'white');
      $('#ideaCategoryDetailsWrap2').css('background', bgIdea);
      $('#ideaCategoryDetailsWrap3').css('background', 'white');
      $('#ideaCategoryDetailsWrap4').css('background', 'white');
      $('#ideaCategoryDetailsWrap5').css('background', 'white');
      $('#ideaCategoryDetailsWrap6').css('background', 'white');
    });
    $('#ideaCategoryDetailsWrap3').on('click',function() {
      $('#ideaCategoryDetailsWrap1').css('background', 'white');
      $('#ideaCategoryDetailsWrap2').css('background', 'white');
      $('#ideaCategoryDetailsWrap3').css('background', bgIdea);
      $('#ideaCategoryDetailsWrap4').css('background', 'white');
      $('#ideaCategoryDetailsWrap5').css('background', 'white');
      $('#ideaCategoryDetailsWrap6').css('background', 'white');
    });
    $('#ideaCategoryDetailsWrap4').on('click',function() {
      $('#ideaCategoryDetailsWrap1').css('background', 'white');
      $('#ideaCategoryDetailsWrap2').css('background', 'white');
      $('#ideaCategoryDetailsWrap3').css('background', 'white');
      $('#ideaCategoryDetailsWrap4').css('background', bgIdea);
      $('#ideaCategoryDetailsWrap5').css('background', 'white');
      $('#ideaCategoryDetailsWrap6').css('background', 'white');
    });
    $('#ideaCategoryDetailsWrap5').on('click',function() {
      $('#ideaCategoryDetailsWrap1').css('background', 'white');
      $('#ideaCategoryDetailsWrap2').css('background', 'white');
      $('#ideaCategoryDetailsWrap3').css('background', 'white');
      $('#ideaCategoryDetailsWrap4').css('background', 'white');
      $('#ideaCategoryDetailsWrap5').css('background', bgIdea);
      $('#ideaCategoryDetailsWrap6').css('background', 'white');
    });
    $('#ideaCategoryDetailsWrap6').on('click',function() {
      $('#ideaCategoryDetailsWrap1').css('background', 'white');
      $('#ideaCategoryDetailsWrap2').css('background', 'white');
      $('#ideaCategoryDetailsWrap3').css('background', 'white');
      $('#ideaCategoryDetailsWrap4').css('background', 'white');
      $('#ideaCategoryDetailsWrap5').css('background', 'white');
      $('#ideaCategoryDetailsWrap6').css('background', bgIdea);
    });

    $('#ideaMaterialWrap1').on('click',function() {
      $('#idea_idea_material_相談したい').prop('checked', true);
    });
    $('#ideaMaterialWrap2').on('click',function() {
      $('#idea_idea_material_すべて用意できる').prop('checked', true);
    });
    $('#ideaMaterialWrap3').on('click',function() {
      $('#idea_idea_material_生地のみ').prop('checked', true);
    });
    $('#ideaMaterialWrap1').on('click',function() {
      $('#ideaMaterialWrap1').css('background', bgIdea);
      $('#ideaMaterialWrap2').css('background', 'white');
      $('#ideaMaterialWrap3').css('background', 'white');
    });
    $('#ideaMaterialWrap2').on('click',function() {
      $('#ideaMaterialWrap1').css('background', 'white');
      $('#ideaMaterialWrap2').css('background', bgIdea);
      $('#ideaMaterialWrap3').css('background', 'white');
    });
    $('#ideaMaterialWrap3').on('click',function() {
      $('#ideaMaterialWrap1').css('background', 'white');
      $('#ideaMaterialWrap2').css('background', 'white');
      $('#ideaMaterialWrap3').css('background', bgIdea);
    });

    // $(function(){
    //   if($('#idea_idea_category_その他').prop('checked')) {
    //     $('#ideaCategoryWrap9').css('background','red');
    //   } else {
    //     $('#ideaCategoryWrap9').css('background','white');
    //   }
    // });
  });
});
