$(document).ready(function(){
    if($('#status_wrapper').length){
        $('body').waitMe({
            effect: 'win8',
            //text: "Please wait for a while. We're fetching your transaction result.",
            color: '#000'
        });
        getIPNNotification();

        function getIPNNotification(){
            $.ajax({
                type:"GET",
                url:"ipn_status",
                dataType:"json",
                success:function(data){
                    $('body').waitMe('hide');
                    if(data === true){
                        $('#success_div').show();
                    }
                    else{
                        $('#error_div').show();
                    }
                },
                error:function(data){
                    $('body').waitMe('hide');
                    alert('Some error occured while fetching data from paypal.Please refresh the page.')
                }
            })
        }
    }


});