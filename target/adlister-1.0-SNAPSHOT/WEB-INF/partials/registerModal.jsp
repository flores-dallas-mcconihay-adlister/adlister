<%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 12/9/21
  Time: 11:53 AM
  To change this template use File | Settings | File Templates.
--%>

<div class="modal-dialog modal-dialog-centered">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" style="font-weight: bold">Register!</h5>
                <p>It's quick and easy.</p>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/login" method="post">
                    <div class="card-body">
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Confirm password">
                        </div>
                        <button type="submit" class="btn btn-success btn-block">Register</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary">Cancel</button>
            </div>
        </div>
    </div>
</div>

