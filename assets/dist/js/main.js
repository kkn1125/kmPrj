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