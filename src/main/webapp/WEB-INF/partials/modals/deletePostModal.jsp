<%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 12/12/21
  Time: 10:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="deletePostModal" aria-hidden="true" data-toggle="modal" tabindex="-1" aria-labelledby="deletePostModal">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" style="font-weight: bold">Delete Post</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/delete" method="post">
                    <div class="card-body">
                        <p>Are you sure you want to delete this post?</p>
                        <button name="deletePost" value="${post.id}" type="submit" class="btn btn-danger btn-lg d-block mx-auto">Yes, delete</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>
