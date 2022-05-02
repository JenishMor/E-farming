<%-- 
    Document   : login
    Created on : Apr 25, 2022, 10:43:42 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/cfb5008573.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="icon" type="image/x-icon" href="./img/ewastelogo.jpg" />
        <link rel="icon" type="image/x-icon" href="./Images/logo.jpeg" />
        <link rel="stylesheet" href="style.css">
        <title>Login</title>
        <style>
            main {
                font-family: "Poppins", sans-serif;
                display: flex;
                height: 100vh;
                justify-content: center;
                align-items: center;
            }
        </style>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand text-light" href="#!"><img class="logo" src="./Images/logo.jpeg" alt="../"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item fs-5"><a class="nav-link text-light active" aria-current="page"
                                                     href="./index.jsp">Home</a></li>
                        <li class="nav-item fs-5"><a class="nav-link text-light" href="./about.jsp">About</a></li>
                        <li class="nav-item dropdown fs-5">
                            <a class="nav-link dropdown-toggle text-light" id="navbarDropdown" href="#" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li>
                                    <hr class="dropdown-divider" />
                                </li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!-- <form action="signup.html" class="d-flex">
                        <button class="btn btn-outline-light me-3 fs-5" type="submit">Sign Up</button>
                    </form>
                    <form action="login.html" class="d-flex">
                        <button class="btn btn-outline-light me-4 fs-5" type="submit">Login</button>
                    </form> -->
                </div>
            </div>
        </nav>
        <main>
            <form action="LoginServlet" method="POST">
                <div class="login-container center">
                    <div class="user">
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="mail center">
                        <i class="fa fa-envelope"></i>
                        <input class="login-input" type="email" name="uemail" id="" placeholder="Enter Email" required>
                    </div>

                    <div class="pw center">
                        <i class="fa fa-key"></i>
                        <input class="login-input" type="password" name="upass" id="" placeholder="Enter Password" required>
                    </div>
                    <input type="submit" class="login-btn center" value="LOGIN">
                </div>
            </form>
        </main>
        <footer class="py-5 bg-dark fs-5 foot">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p>
            </div>
        </footer>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</html>
