<%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 12/8/21
  Time: 11:20 PM
  To change this template use File | Settings | File Templates.
--%>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

<script>
    $(document).ready(function () {
		$('body').addClass('bg-pan-left');
		// $('.hideOnload').css('display', 'none')

        $('.show-button').click(function () {
			if ($(this).siblings('p').hasClass('invisible')) {
				$(this).siblings('p').removeClass('invisible')

			} else {
				$(this).siblings('p').addClass('invisible');
            }


        })
    })
</script>