$(function(){
  setTimeout("$('.flash').fadeOut('slow')", 3000)
});

$(window).on('turbolinks:load',function() {
  $fileField = $('#file')
  $($fileField).on('change', $fileField, function(e) {
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
  // });
  // $('#ideaContent1').on('click',function() {
  //   $('#ideaContentWrap2').css('background', 'white');
  //   $('#ideaContentWrap3').css('background', 'white');
  //   $('#ideaContentWrap4').css('background', 'white');
  //   $('#ideaContentWrap5').css('background', 'white');
  //   $('#ideaContentWrap1').css('background', '#FFD800');
  // });
  // $('#ideaContent2').on('click',function() {
  //   $('#ideaContentWrap1').css('background', 'white');
  //   $('#ideaContentWrap3').css('background', 'white');
  //   $('#ideaContentWrap4').css('background', 'white');
  //   $('#ideaContentWrap5').css('background', 'white');
  //   $('#ideaContentWrap2').css('background', '#FFD800');
  // });
  // $('#ideaContent3').on('click',function() {
  //   $('#ideaContentWrap1').css('background', 'white');
  //   $('#ideaContentWrap2').css('background', 'white');
  //   $('#ideaContentWrap4').css('background', 'white');
  //   $('#ideaContentWrap5').css('background', 'white');
  //   $('#ideaContentWrap3').css('background', '#FFD800');
  // });
  // $('#ideaContent4').on('click',function() {
  //   $('#ideaContentWrap1').css('background', 'white');
  //   $('#ideaContentWrap2').css('background', 'white');
  //   $('#ideaContentWrap3').css('background', 'white');
  //   $('#ideaContentWrap5').css('background', 'white');
  //   $('#ideaContentWrap4').css('background', '#FFD800');
  // });
  // $('#ideaContent5').on('click',function() {
  //   $('#ideaContentWrap1').css('background', 'white');
  //   $('#ideaContentWrap2').css('background', 'white');
  //   $('#ideaContentWrap3').css('background', 'white');
  //   $('#ideaContentWrap4').css('background', 'white');
  //   $('#ideaContentWrap5').css('background', '#FFD800');
  // });
  $('#ideaImageWrap1').click(function() {
    $('#idea_product_image_似た物がある').prop('checked', true);
  });
  $('#ideaImageWrap2').click(function() {
    $('#idea_product_image_写真や絵がある').prop('checked', true);
  });
  $('#ideaImageWrap3').click(function() {
    $('#idea_product_image_型紙がある').prop('checked', true);
  });
  $('#ideaImageWrap4').click(function() {
    $('#idea_product_image_リメイクお直し').prop('checked', true);
  });
  $('#ideaImageWrap5').click(function() {
    $('#idea_product_image_相談したい').prop('checked', true);
  });

  $(function(){
    $("#ideaUserWrap1").on("click", function (evt) {
      $("#idea_idea_user_ids_1").prop("checked", !$("#idea_idea_user_ids_1").prop("checked"));
    });
    $("#ideaUserWrap2").on("click", function (evt) {
      $("#idea_idea_user_ids_2").prop("checked", !$("#idea_idea_user_ids_2").prop("checked"));
    });
    $("#ideaUserWrap3").on("click", function (evt) {
      $("#idea_idea_user_ids_3").prop("checked", !$("#idea_idea_user_ids_3").prop("checked"));
    });
    $("#ideaUserWrap4").on("click", function (evt) {
      $("#idea_idea_user_ids_4").prop("checked", !$("#idea_idea_user_ids_4").prop("checked"));
    });
  });

  $('#ideaCategoryWrap1').click(function() {
    $('#idea_idea_category_洋服').prop('checked', true);
  });
  $('#ideaCategoryWrap2').click(function() {
    $('#idea_idea_category_和服').prop('checked', true);
  });
  $('#ideaCategoryWrap3').click(function() {
    $('#idea_idea_category_ドレス衣装').prop('checked', true);
  });
  $('#ideaCategoryWrap4').click(function() {
    $('#idea_idea_category_作業服ユニフォーム').prop('checked', true);
  });
  $('#ideaCategoryWrap5').click(function() {
    $('#idea_idea_category_バッグ帽子').prop('checked', true);
  });
  $('#ideaCategoryWrap6').click(function() {
    $('#idea_idea_category_小物').prop('checked', true);
  });
  $('#ideaCategoryWrap7').click(function() {
    $('#idea_idea_category_インテリア').prop('checked', true);
  });
  $('#ideaCategoryWrap8').click(function() {
    $('#idea_idea_category_その他').prop('checked', true);
  });

  $('#ideaCategoryDetailsWrap1').click(function() {
    $('#idea_idea_category_details_ジャケットアウター').prop('checked', true);
  });
  $('#ideaCategoryDetailsWrap2').click(function() {
    $('#idea_idea_category_details_トップスシャツ').prop('checked', true);
  });
  $('#ideaCategoryDetailsWrap3').click(function() {
    $('#idea_idea_category_details_ボトムススカート').prop('checked', true);
  });
  $('#ideaCategoryDetailsWrap4').click(function() {
    $('#idea_idea_category_details_ワンピースオーバーオール').prop('checked', true);
  });
  $('#ideaCategoryDetailsWrap5').click(function() {
    $('#idea_idea_category_details_スーツタキシード').prop('checked', true);
  });
  $('#ideaCategoryDetailsWrap6').click(function() {
    $('#idea_idea_category_details_その他').prop('checked', true);
  });

  $('#ideaMaterialWrap1').click(function() {
    $('#idea_idea_category_details_相談したい').prop('checked', true);
  });
  $('#ideaMaterialWrap2').click(function() {
    $('#idea_idea_category_details_すべて用意できる').prop('checked', true);
  });
  $('#ideaMaterialWrap3').click(function() {
    $('#idea_idea_category_details_生地のみ').prop('checked', true);
  });

  // $(function(){
  //   if($('#idea_idea_category_その他').prop('checked')) {
  //     $('#ideaCategoryWrap9').css('background','red');
  //   } else {
  //     $('#ideaCategoryWrap9').css('background','white');
  //   }
  // });
});
