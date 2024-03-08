(function ($) {
    'use strict';

    let $star_rating = $('.star-rating .fa');

    let setRatingStar = function () {
        return $star_rating.each(function () {
            if (parseInt($star_rating.siblings('input.rating-value').val()) >= parseInt($(this).data('rating'))) {
                return $(this).removeClass('uncheck').addClass('check');
            } else {
                return $(this).removeClass('check').addClass('uncheck');
            }
        });
    };

    $star_rating.on('click', function () {
        let currentValue = $('input.rating-value').val();

        $star_rating.siblings('input.rating-value').val($(this).data('rating'));
        let starPoint = parseInt($(this).data('rating'));
        let data = {
            RealEstateId: $('#RealEstateId').val(),
            StarPoint: starPoint
        };

        if (currentValue !== starPoint) {
            $.ajax({
                cache: false,
                url: '/Rating/UpdateRatingStart',
                type: 'POST',
                data: data,
                // contentType: 'application/json',
                success: function (result) {
                    console.log(result)
                    if (result.isSuccess){
                        getAverageStarPoint();
                        return setRatingStar();
                    }else {
                        console.log('show')
                        $('#err-rating').show();
                        setTimeout(function () {
                            window.location.href = '/dang-nhap';
                        }, 2000)
                        $('input.rating-value').val(currentValue);
                        return setRatingStar();
                    }
                },
                error: function () {
                    $('input.rating-value').val(currentValue);
                    return setRatingStar();
                }
            });
        }
    });

    let getRatingStart = function () {
        let data = {
            RealEstateId: $('#RealEstateId').val(),
        };
        $.ajax({
            cache: false,
            url: '/Rating/GetRatingStart',
            type: 'POST',
            data: data,
            // contentType: 'application/json',
            success: function (result) {
                console.log(result)
                if (result.isSuccess){
                    $('input.rating-value').val(result.data);
                    return setRatingStar();
                }
            },
            error: function () {
                $('input.rating-value').val(currentValue);
                return setRatingStar();
            }
        });
    }

    let getAverageStarPoint = function () {
        let data = {
            RealEstateId: $('#RealEstateId').val(),
        };
        $.ajax({
            cache: false,
            url: '/Rating/GetAverageStarPoint',
            type: 'POST',
            data: data,
            // contentType: 'application/json',
            success: function (result) {
                console.log(result)
                if (result.isSuccess){
                    var text = result.data.toFixed(1) + '/5';
                    $('#AverageStarPoint').text(text);
                }else{
                    $('#AverageStarPoint').text('0/5');
                }
            },
            error: function () {
                $('#AverageStarPoint').text('0/5');
            }
        });
    }
    
    //Load functions
    $(document).ready(function () {
        setRatingStar();
        getRatingStart();
        getAverageStarPoint();
    });

})(jQuery);