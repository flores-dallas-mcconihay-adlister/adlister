<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

<style>
    
    /*overall css edits*/
	html {
		height: 100%;
	}
	body {
        /*background-color: #1D976C;*/
		background: linear-gradient(90deg, #e3ffe7 0%, #d9e7ff 100%);
		height: 100%;
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

	i {
		font-size: 26px;
	}
	i:hover {
		opacity: 50%;
	}
	#loginContainer {
		/*margin-top: 5rem;*/
        /*padding: 20px;*/
        padding: 10px 5px;
	}
    /*overall css edits end*/
    
    /*media queries*/
    @media screen and (min-width: 320px) and (max-width: 767px) {
        /*login screen edits*/
        .main-header {
            font-size: 3.5rem;
            font-weight: 300;
            line-height: 1.2;
            text-align: center;
        }
        .content {
            display: flex;
            flex-direction: column;
            height: 100vh;
            margin-top: 30px;
        }
        .main-p {
            text-align: center;
        }
        .logo-box {
            display: flex;
            justify-content: center;
            margin-bottom: 0;
        }
        .join-button {
            display: none;
        }
        .form-container {
            display: flex;
            justify-content: center;
        }
		footer {
            margin-top: 200px;


			/*z-index: 1;*/
			/*flex-shrink: 0;*/
			/*background-color: #eeeeee;*/
		}
        .emoji-pic {
            height: 250px;
            align-items: center;
            display: flex;
            justify-content: center;
        }
        /*login screen edits end*/

        /*index/home page edits*/
        .index-container {

        }
        .cards {
            margin: 10px auto;
            width: 100%;
        }
        .add-button {
            display: block;
            width: 100%;
            margin: .5rem!important;
        }
        .flex-button {
            display: flex;
            justify-content: center;
        }
        .index-header {
            margin-bottom: 5rem;
        }

	}

    @media screen and (min-width: 768px) and (max-width: 1024px) {
        .main-header {
            text-align: center;
		}
        .emoji-pic {
			text-align: center;
        }
        .join-button {
            display: block;
            margin-left: auto;
            margin-right: auto;
            margin-top: 25px;
        }

        .content {

            display: flex;
            justify-content: space-around;
            height: 100vh;
            margin-top: 20%;
            /*width: 100%;*/
            /*margin-right: auto;*/
            /*margin-left: auto;*/
            /*width: 0;!important;*/
            /*padding-right: 0;!important;*/
            /*padding-left: 0;!important;*/
        }
	}


    



</style>

