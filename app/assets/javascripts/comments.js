$(document).ready(function() {
  $(document).on("click", ".reply-reveal", function() {
    var comment_id = $(this).attr("data-comment-id");
    $("#reply-" + comment_id).show();
  });
  
  $(document).on("click", ".comment-edit-reveal", function() {
    var comment_id = $(this).attr("data-comment-edit-id");
    $("#comment-content-" + comment_id).hide();
    $("#comment-edit-" + comment_id).show();
  });
});