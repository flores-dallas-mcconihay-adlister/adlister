<%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 12/10/21
  Time: 9:58 AM
  To change this template use File | Settings | File Templates.
--%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav mx-lg-auto">
            <form action="" class="form-inline mt-3">
                <input type="search" placeholder="Search" aria-label="Search" class="form-control mr-sm-2">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            <a href="/profile" class="nav-link active">
                <i class="bi bi-person-circle"></i>
            </a>
            <a class="nav-link active" href="/index">
                <i class="bi bi-house"></i>
                <span class="sr-only">(current)</span>
            </a>
            <a href="/logout" class="nav-link active">
                <i class="bi bi-box-arrow-right"></i>
            </a>
        </div>
    </div>
</nav>
