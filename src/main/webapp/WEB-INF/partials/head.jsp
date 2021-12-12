<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

<style>
    html {
        height: 100%;
        /*box-sizing: border-box;*/
    }
    body {
		background: linear-gradient(90deg, #e3ffe7 0%, #d9e7ff 100%);
        height: 100%;

        /*display: flex;*/
        /*flex-direction: column;*/
        /*align-items: center;*/
        /*background-repeat: repeat;*/
        /*background-image: url("../laughing-emoji.png");*/
    }
    .content {
        flex: 1 0 auto;
    }
    .empty-div {
        /*height: 50px;*/
    }
    footer {
        flex-shrink: 0;
    }
    .logo-box {
        /*border: 1px solid black;*/
        height: 330px;
        width: 485px
    }

    .hideJoke {
        visibility: hidden;
    }
    #loginContainer {
        margin-top: 5rem;

    }
    i {
        font-size: 26px;
    }
    i:hover {
        opacity: 50%;
    }

	.btn-grad {background-image: linear-gradient(to right, #314755 0%, #26a0da  51%, #314755  100%)}
	.btn-grad {
		/*margin: 10px;*/
		/*padding: 15px 45px;*/
		text-align: center;
		/*text-transform: uppercase;*/
		transition: 0.5s;
		background-size: 200% auto;
		/*color: white;*/
		box-shadow: 0 0 20px #eee;
		/*border-radius: 10px;*/
		display: block;
	}

	.btn-grad:hover {
		background-position: right center; /* change the direction of the change here */
		/*color: #fff;*/
		text-decoration: none;
        font-weight: bold;
	}


	.btn-grad2 {background-image: linear-gradient(to right, #1D976C 0%, rgba(147, 249, 185, 0.65) 51%, #1D976C  100%)}
	.btn-grad2 {
		/*margin: 10px;*/
		/*padding: 15px 45px;*/
		text-align: center;
		/*text-transform: uppercase;*/
		transition: 0.5s;
		background-size: 200% auto;
		/*color: white;*/
		box-shadow: 0 0 20px #eee;
		/*border-radius: 10px;*/
		display: block;
	}

	.btn-grad2:hover {
		background-position: right center; /* change the direction of the change here */
		/*color: #fff;*/
		text-decoration: none;
        font-weight: bold;
	}


	.btn-grad3 {background-image: linear-gradient(to right, #8e9eab 0%, rgba(238, 242, 243, 0.48) 51%, #8e9eab  100%)}
	.btn-grad3 {
		/*margin: 10px;*/
		/*padding: 15px 45px;*/
		text-align: center;
		/*text-transform: uppercase;*/
		transition: 0.5s;
		background-size: 200% auto;
		color: black;
		box-shadow: 0 0 20px #eee;
		/*border-radius: 10px;*/
		display: block;
	}

	.btn-grad3:hover {
		background-position: right center; /* change the direction of the change here */
		color: black;
		text-decoration: none;
	}




</style>

