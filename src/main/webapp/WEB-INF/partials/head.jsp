<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bangers&family=Montserrat:ital,wght@0,500;1,300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

<style>
	/**
     * ----------------------------------------
     * animation heartbeat
     * ----------------------------------------
     */
	@keyframes heartbeat {
		from {
			transform: scale(1);
			transform-origin: center center;
			animation-timing-function: ease-out;
		}
		10% {
			transform: scale(0.91);
			animation-timing-function: ease-in;
		}
		17% {
			transform: scale(0.98);
			animation-timing-function: ease-out;
		}
		33% {
			transform: scale(0.87);
			animation-timing-function: ease-in;
		}
		45% {
			transform: scale(1);
			animation-timing-function: ease-out;
		}
	}

	/**
     * ----------------------------------------
     * animation bg-pan-left
     * ----------------------------------------
     */
	@keyframes bg-pan-left {
		0% {
			background-position: 100% 50%;
		}
		100% {
			background-position: 0% 50%;
		}
	}

	/**
     * ----------------------------------------
     * animation text-pop-up-top
     * ----------------------------------------
     */
	@keyframes text-pop-up-top {
		0% {
			transform: translateY(0);
			transform-origin: 50% 50%;
			text-shadow: none;
		}
		100% {
			transform: translateY(-50px);
			transform-origin: 50% 50%;
			text-shadow: 0 1px 0 #cccccc, 0 2px 0 #cccccc, 0 3px 0 #cccccc, 0 4px 0 #cccccc, 0 5px 0 #cccccc, 0 6px 0 #cccccc, 0 7px 0 #cccccc, 0 8px 0 #cccccc, 0 9px 0 #cccccc, 0 50px 30px rgba(0, 0, 0, 0.3);
		}
	}


	/*overall css edits*/

    /*show button animation start*/
    .show-button:focus {
        outline: none;
        box-shadow: none;
    }
	.show-button {
		box-shadow: none !important;
		/*margin-right: auto;*/
		/*margin-top: 1.5rem;*/
		/*width: 50%;*/
	}
    .show-button:hover {
        animation-name: heartbeat;
        animation-duration: 2s;
        animation-iteration-count: infinite;

    }
    /*show button animation end*/

	html {
		height: 100%;
	}
	body {
		background: linear-gradient(90deg, #e3ffe7 0%, #d9e7ff 100%);
		height: 100%;
	}
    footer {
        margin-top: 10rem;
    }
	.delete-button, .edit-button {
        margin: 5px;
	}
    .cards {
        /*height: 50%;*/
        text-align: center;
		margin: 10px;
		/*width: 50%;*/
    }
    .adjust-btn-height {
        /*height: 75%;*/
        position: relative;
        top: .25rem;
    }
    .brand-font {
		font-family: 'Bangers', cursive;
        font-size: x-large;
    }
    .navbar-brand {
		font-family: 'Montserrat', sans-serif;
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
	.flex-button {
		margin-bottom: 1rem;
		display: flex;
		justify-content: start;
	}
	.add-button {
		display: block;
		width: 50px;
		height: 50px;
	}
	.bi-plus-lg {
		padding-right: 2px;
	}


    /*login/logout button gradients*/
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
    /*login/logout button gradients end*/

	/*overall css edits end*/
    
    /*media queries*/
    @media screen and (min-width: 320px) and (max-width: 768px) {
        /*login screen edits*/

        #hideOnSmall {
            display: none;
        }
        .main-header {
            margin-top: 5rem;
            margin-bottom: 5rem;
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
        .emoji-pic {
            height: 250px;
            align-items: center;
            display: flex;
            justify-content: center;
        }

        /*login screen edits end*/

        /*index/home page edits*/

        .index-header {
            margin-bottom: 5rem;
        }
        .adjust-form-width {
            width: 58%;
        }
        .index-container {
            margin-top: 2rem;
        }
        nav {
			background: linear-gradient(90deg, #e3ffe7 0%, #d9e7ff 100%);

		}
        .add-button {
            position: relative;
            left: 1rem;
        }


	}

    @media screen and (min-width: 769px) and (max-width: 1023px) {

        /*login screen edits*/

        #hideOnSmall {
            display: none;
        }
		.main-header {
            margin-top: 5rem;
			font-size: 3.5rem;
			font-weight: 300;
			line-height: 1.2;
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
            justify-content: space-evenly;
            /*height: 100vh;*/
            /*margin-top: 10%;*/
            align-items: center;
        }
        /*.adjust-box-margin {*/
        /*    position: relative;*/
        /*    top: 5rem;*/
        /*}*/

        /*login screen edits end*/

        .index-container {
            padding-top: 2rem;
        }
		nav {
			background: linear-gradient(90deg, #e3ffe7 0%, #d9e7ff 100%);

		}
        .add-button {
            position: relative;
            right: 4.5rem;
        }

	}

    @media screen and (min-width: 1024px) {

		.main-header {
			margin-top: 5rem;
            margin-bottom: 5rem;
			font-size: 3.5rem;
			font-weight: 300;
			line-height: 1.2;
            text-align: center;
		}
        #hideOnLarge {
            display: none;
        }
        .navbar {
            padding-bottom: 1px;
			background: linear-gradient(90deg, #e3ffe7 0%, #d9e7ff 100%);

		}
        .navbarFlexBox {
            width: 100%;
		}
        .navbarFlexLinks {
            display: flex;
            margin-left: auto;
        }
        .flex-form {
			position: relative;
            margin: 0 auto;
            left: 7rem;
        }
        .index-container {
            margin-top: 5rem;
            height: 100%;
        }
        .cards {
            margin: 1rem auto;
            width: 75%;
        }
        .flex-button {
            justify-content: right;
            position: relative;
            right: 9rem;
        }
		.content {
			display: flex;
			justify-content: space-around;
			align-items: center;
		}
        .adjust-box-margin {
            position: relative;
            top: -2rem;
        }
		.join-button {
			display: block;
			margin-left: auto;
			margin-right: auto;
			margin-top: 25px;
		}
		.emoji-pic {
			text-align: center;
		}

	}

</style>

