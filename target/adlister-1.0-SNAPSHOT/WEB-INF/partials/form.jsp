<%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 12/9/21
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<div class="row">
    <div class="col-sm">
        <div class="card">
            <form action="/login" method="post" class="">
                <div class="card-body">
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                    <div class="text-center mt-1">
                        <a href="#" style="text-decoration: underline">Forgot password?</a>
                    </div>
                </div>
            </form>
            <hr>
            <button type="button" class="btn btn-success m-2" data-toggle="modal" data-target="#register-Modal">Create new account</button>
        </div>
    </div>
</div>



<%--<div class="modal fade" id="register-Modal" aria-hidden="true" data-toggle="modal" tabindex="-1" aria-labelledby="register-Modal">--%>
<%--    <div class="modal-dialog modal-dialog-centered">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title" style="font-weight: bold">Register!</h5>--%>
<%--                <br>--%>
<%--                <p>It's quick and easy.</p>--%>
<%--                <button class="close" type="button" data-dismiss="modal" aria-label="Close">--%>
<%--                    <span aria-hidden="true">&times;</span>--%>
<%--                </button>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<%--                <form action="/login" method="post">--%>
<%--                    <div class="card-body">--%>
<%--                        <div class="form-group">--%>
<%--                            <input type="email" class="form-control" placeholder="Email">--%>
<%--                        </div>--%>
<%--                        <div class="form-group">--%>
<%--                            <input type="password" class="form-control" placeholder="Password">--%>
<%--                        </div>--%>
<%--                        <div class="form-group">--%>
<%--                            <input type="password" class="form-control" placeholder="Confirm password">--%>
<%--                        </div>--%>
<%--                        <button type="submit" class="btn btn-success btn-block">Register</button>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--            <div class="modal-footer">--%>
<%--                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>


<%--<jsp:include page="registerModal.jsp"/>--%>
