/* bell */
$(document).on("click", "#bell", function(){
	let a = $('[data-type="popBell"]');
	if(a.data("status")=="on"){
		$(this).html('<i class="far fa-bell-slash"></i>');
		a.html('<i class="far fa-bell-slash fa-5x py-2"></i>');
		a.data("status", "off");
		a.fadeIn().delay(1000).fadeOut();
		
	} else {
		$(this).html('<i class="far fa-bell fa-lg"></i>');
		a.html('<i class="far fa-bell fa-5x py-2 px-3"></i>');
		a.data("status", "on");
		a.fadeIn().delay(1000).fadeOut();
	}
});

$(document).on("click", '[data-type="room"]', function(){
    location.href="/menu/chattingRoom";
})

var list = "";
for(var i=0; i<10; i++){
    list += $('#for').html();
}
$('#list').html(list);

// if($('.toggleArrow').data("method")=='reverse'){
//     $($('.toggleArrow').data("for")).hide();
// }

$('.toggleArrow').on("click", function(){
    if($(this).data("method")=="reverse")
        $(this).toggleClass("collapsed-re");
    else
        $(this).toggleClass("collapsed");
    var target = $(this).data("for");
    $(target).fadeToggle();
});

$('a#search').on("click", function(){
    if($('input[data-search').attr("data-search") == "collapse"){
        $('input[data-search="collapse"]').attr("data-search", "active");
    } else {
        $('input[data-search="active"').attr("data-search", "collapse");
    }
});

/* tooltips */
var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
  return new bootstrap.Tooltip(tooltipTriggerEl)
});

/* suneditor */
const editor = SUNEDITOR.create((document.getElementById('content') || 'content'),{
    // All of the plugins are loaded in the "window.SUNEDITOR" object in dist/suneditor.min.js file
    // Insert options
    // Language global object (default: en)
    buttonList: [
        ['undo', 'redo'],
        ['font', 'fontSize', 'formatBlock'],
        ['paragraphStyle', 'blockquote'],
        ['bold', 'underline', 'italic', 'strike', 'subscript', 'superscript'],
        ['fontColor', 'hiliteColor', 'textStyle'],
        ['removeFormat'],
        '/', // Line break
        ['outdent', 'indent'],
        ['align', 'horizontalRule', 'list', 'lineHeight'],
        ['table', 'link', 'image', 'video', 'audio' /** ,'math' */], // You must add the 'katex' library at options to use the 'math' plugin.
        /** ['imageGallery'] */ // You must add the "imageGalleryUrl".
        ['fullScreen', 'showBlocks', 'codeView'],
        ['preview', 'print'],
        ['save', 'template']
    ],
    lang: SUNEDITOR_LANG['ko'],
    placeholder:"내용 작성 후 꼭 저장 버튼을 누르시고 등록해주세요."
});
editor.onImageUpload = function (targetElement, index, state, info, remainingFilesCount, core) {
    console.log(`targetElement:${targetElement}, index:${index}, state('create', 'update', 'delete'):${state}`)
    console.log(`info:${info}, remainingFilesCount:${remainingFilesCount}`)
}