$(document).ready(function() {
  $(".reply-reveal").click(function() {
    var comment_id = $(this).attr("data-comment-id");
    $("#reply-" + comment_id).show();
  })
})