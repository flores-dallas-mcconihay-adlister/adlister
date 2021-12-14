<%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 12/14/21
  Time: 1:06 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="modal fade" id="editPostModal" aria-hidden="true" data-toggle="modal" tabindex="-1" aria-labelledby="editPostModal">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" style="font-weight: bold">Joke Editor</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/update" method="post">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="category">Category</label>
                            <input id="category" type="text" name="category" placeholder="Enter a category name.." class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input id="title" type="text" class="form-control" placeholder="Joke title.." name="title">
                        </div>
                        <div class="form-group">
                            <label for="description">Description</label>
                            <input id="description" type="text" class="form-control" placeholder="Tell your joke.." name="description">
                        </div>
                        <button type="submit" class="btn btn-warning btn-lg d-block mx-auto">Update</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>

