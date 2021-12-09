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
                        <input type="text" class="form-control" placeholder="Username">
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
