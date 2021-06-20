var user = {
    init: function () {
        user.registerEvents();
    },
    registerEvents: function () {
        $('.btn-active').off('click').on('click',
            function (e) {
                e.preventDefault();
                var btn = $(this);
                var id = btn.data('id');
                $.ajax({
                    url: "/Admin/UserAccount/ChangeStatus",
                    data: { id: id },
                    dataType: "json",
                    type: "POST",
                    success: function (response) {
                        console.log(response);
                        if (response.status == true) {
                            btn.text("Active");
                            btn.removeClass("btn-danger");
                            btn.addClass("btn-success");
                        } else {
                            btn.text("Block");
                            btn.removeClass("btn-success");
                            btn.addClass("btn-danger");
                        }
                    }
                });
            });
    }
}
user.init();