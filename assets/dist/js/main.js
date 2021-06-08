$(document).on("click", '[data-type="room"]', function(){
    location.href="./chattingRoom.html";
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

var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
  return new bootstrap.Tooltip(tooltipTriggerEl)
});