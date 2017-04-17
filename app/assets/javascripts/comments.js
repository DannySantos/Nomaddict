$(document).ready(function() {
  $(".reply-reveal").click(function() {
    var comment_id = $(this).attr("data-comment-id");
    $("#reply-" + comment_id).show();
  });
  
  $(".comment-edit-reveal").click(function() {
    var comment_id = $(this).attr("data-comment-edit-id");
    $("#comment-content-" + comment_id).hide();
    $("#comment-edit-" + comment_id).show();
  });
});