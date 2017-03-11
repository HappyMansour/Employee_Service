$('document').ready(function () {
    //view emp
    $.ajax({
        url: '/EService.svc/rest/Employees',
        method: 'Get',

    }).done(function (res) {
        $('.ve').click(function () {
            var data = res;
            console.log(data);
            for (var i = 0, length = data.length; i < length; i++) {
                $('.main_emp').append("<div><p>ID:" + data[i].ID + "</p><p> Name:" + data[i].Name + "</p><p>Department ID:" + data[i].Dept_ID + "</p></div></br>");
            }

        })
    })

    //view dep
    $.ajax({
        url: '/EService.svc/rest/Departments',
        method: 'Get',

    }).done(function (res) {
        $('.vd').click(function () {
            var data = res;
            console.log(data);
            for (var i = 0, length = data.length; i < length; i++) {
                $('.main_dep').append("<div><p>ID:" + data[i].DP_ID + "</p><p> Name:" + data[i].DP_Name + "</p></div></br>");
            }

        })
    })

    //insert emp
    $('.ie').click(function () {
            var obj = {
            Emp_ID: $('.emp_id').val(),
            Emp_Name: $('.emp_name').val(),
            DP_ID: $('.Dp_id').val(),
        };
        //console.log(obj);

        $.ajax({
            url: '/EService.svc/rest/Employee',
            dataType: 'json',
            contentType: 'application/json',
            method: 'POST',
            //processData: true,
            data: JSON.stringify(obj)
        }).done(function () { console.log('true') }).fail(function (err) {
            console.log(err)
        })
        //console.log(data);
        
    })
   
    
    //insert dep
    $('.id').click(function () {

        var obj = {
            Emp_ID: $('.dep_id').val(),
            Emp_Name: $('.dep_name').val(),
        };

        $.ajax({
            url: 'http://localhost:8597/EService.svc/rest/Department',
            dataType: 'jsonp',
            contentType: 'application/json',
            method: 'POST',
            data: JSON.stringify(obj)
        }).done(function () { console.log('true') }).fail(function () { console.log('false') })

    })

   //update emp
    $('.id').click(function () {

        var obj = {
            Emp_ID: $('.dep_id').val(),
            Emp_Name: $('.dep_name').val(),
        };

        $.ajax({
            url: '/EService.svc/rest/Employee/' + $('.emp_id').val(),
            dataType: 'jsonp',
            contentType: 'application/json',
            method: 'PUT',
            data: JSON.stringify(obj)
        }).done(function () { console.log('true') }).fail(function () { console.log('false') })

    })

    //update dep
    $('.id').click(function () {

        var obj = {
            Emp_ID: $('.dep_id').val(),
            Emp_Name: $('.dep_name').val(),
        };

        $.ajax({
            url: '/EService.svc/rest/Department/' + $('.dep_id').val(),
            dataType: 'jsonp',
            contentType: 'application/json',
            method: 'PUT',
            data: JSON.stringify(obj)
        }).done(function () { console.log('true') }).fail(function () { console.log('false') })

    })


    $('.de').click(function () {

    $.ajax({
        url: '/EService.svc/rest/Employee/'+$('.emp_id').val(),
        contentType: 'application/json',
        method: 'DELETE',
    }).done(function () { console.log('true') }).fail(function (err) {
        console.log(err)
    })
        //console.log(data);
    })


    $('.dd').click(function () {

        $.ajax({
            url: '/EService.svc/rest/Department/' + $('.dep_id').val(),
            contentType: 'application/json',
            method: 'DELETE',
        }).done(function () { console.log('true') }).fail(function (err) {
            console.log(err)
        })
        //console.log(data);
    })


    
})

