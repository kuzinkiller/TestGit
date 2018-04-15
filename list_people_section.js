$('#table-banner').DataTable({
    "language": {
        "lengthMenu": "Hiển thị _MENU_ People Section mỗi trang",
        "zeroRecords": "Không tìm thấy People Section",
        "info": "Hiển thị trang _PAGE_ trong số _PAGES_ trang",
        "infoEmpty": "Không tìm thấy People Section",
        "infoFiltered": "(Lọc từ _MAX_ công ty)",
        "paginate": {
            "previous": "Trước",
            "next": "Sau"
        },
        "search": "Tìm kiếm:"
    }
});
// $('#table-banner-confirm').DataTable({
//     columnDefs: [{
//         className: 'select-checkbox',
//         targets: 0
//     }]
// });

function getFullCurrentPath() {
    var url = window.location.href;
    if (url.lastIndexOf('/') != url.length - 1) {
        url += '/';
    }
    return url;
};

var deleteBannerId = -1;

function goDeleteJobPost(id) {
    deleteBannerId = id;
    $('#delete-job-post').modal('show');
}

function createPeopleSection() {
    window.location.href = getFullCurrentPath() + 'add';
}

var id = -1;

function editBanner(id) {
    window.location.href = getFullCurrentPath() + id + '/update';
}

function deleteBanner(id, flgStatus) {
    deleteBannerId = id;
    if (flgStatus == 1) {
        alert("Chỉ cho xóa Banner trạng thái Inactive");
        return;
    }
    $('#delete-banner').modal('show');
}

function actionDeleteBanner() {
    window.location.href = getFullCurrentPath() + deleteBannerId + '/delete';
    deleteBannerId = -1;
}

function viewBannerPublished(id) {
    window.location.href = getFullCurrentPath() + id + '/view';
}

function goBack() {
    var resultBack = confirm("Bạn có chắc chắn muốn quay lại?");
    if (resultBack == true) {
        $('#notification').text = '';
        window.location.href = "/cms/banner";
    }
}

function validateDataEditBanner() {
    var nameVi = $('#id_name_en_banner').val().trim();
    var nameEn = $('#id_name_vi_banner').val().trim();
    var descriptionVi = $('#id_descriptionVi').val().trim();
    var descriptionEn = $('#id_descriptionEn').val().trim();
    var flgStatus = $('#flgStatus').val();

    if (nameVi.length <= 0) {
        $("#nameViAlert").text("Nội dung của Slide tiếng việt sai định dạng!");
        return;
    } else {
        $("#nameViAlert").text("");
    }

    if (nameEn.length <= 0) {
        $("#nameEnAlert").text("Nội dung của Slide tiếng anh sai định dạng.");
        return;
    } else {
        $("#nameEnAlert").text("");
    }
    let id = $('#banner_id').val();
    var form_data = $('#edit_banner')[0];
    var data = new FormData(form_data);
    $.ajax({
        type: 'POST',
        enctype: 'multipart/form-data',
        url: "/cms/banner/" + id + "/update",
        processData: false,
        contentType: false,
        cache: false,
        data: data,
        success: function (data) {
            if (data == "true") {
                window.location.href = "/cms/banner";
            }
        }
    });
}

function addBanner() {
    var nameVi = $('#id_name_en_banner').val().trim();
    var nameEn = $('#id_name_vi_banner').val().trim();
    var descriptionVi = $('#id_descriptionVi').val().trim();
    var descriptionEn = $('#id_descriptionEn').val().trim();

    if (nameVi.length <= 0) {
        $("#nameViAlert").text("Nội dung của Slide tiếng việt sai định dạng!");
        return;
    } else {
        $("#nameViAlert").text("");
    }

    if (nameEn.length <= 0) {
        $("#nameEnAlert").text("Nội dung của Slide tiếng anh sai định dạng.");
        return;
    } else {
        $("#nameEnAlert").text("");
    }
    var form_data = $('#add_banner')[0];
    var data = new FormData(form_data);

    $.ajax({
        type: 'POST',
        enctype: 'multipart/form-data',
        url: "/cms/banner/add",
        processData: false,
        contentType: false,
        cache: false,
        data: data,
        success: function (data) {
            if (data == "true") {
                window.location.href = "/cms/banner";
            }
        }
    });

}

// Validate định dạng file Banner
function bannerFileType() {
    let fileName = $('#banner').val();
    let idxDot = fileName.lastIndexOf(".") + 1;
    let extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
    if (extFile == "jpg" || extFile == "jpeg" || extFile == "png"
        || extFile == "jpg") {
        return true;
    } else {
        alert("Định dạng file không hợp lệ");
        $('#banner').val('');
        return false;
    }
}

function showBanner(input) {
    if (input.files && input.files[0]) {
        let reader = new FileReader();
        reader.onload = function (e) {
            $('#title_banner').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}

$("#banner").change(function () {
    let file = this.files[0];
    let maxFilesize = 5 * 1024 * 1024;
    if (file.size > maxFilesize) {
        alert('Dung lượng file quá lớn (Kích thước file phải < 5MB)');
        $("#banner").replaceWith($("#banner").val('').clone(true));
        return;
    }
    showBanner(this);
});

function validateDataCloneBanner(id) {
    var nameVi = $('#id_name_en_banner').val().trim();
    var nameEn = $('#id_name_vi_banner').val().trim();
    var descriptionVi = $('#id_descriptionVi').val().trim();
    var descriptionEn = $('#id_descriptionEn').val().trim();

    if (nameVi.length <= 0) {
        $("#nameViAlert").text("Nội dung của Slide tiếng việt sai định dạng!");
        return;
    } else {
        $("#nameViAlert").text("");
    }

    if (nameEn.length <= 0) {
        $("#nameEnAlert").text("Nội dung của Slide tiếng anh sai định dạng.");
        return;
    } else {
        $("#nameEnAlert").text("");
    }
    var form_data = $('#clone_banner')[0];
    var data = new FormData(form_data);
    $.ajax({
        type: 'POST',
        enctype: 'multipart/form-data',
        url: "/cms/banner/"+id+"/clone",
        processData: false,
        contentType: false,
        cache: false,
        data: data,
        success: function (data) {
            if (data == "true") {
                window.location.href = "/cms/banner";
            }
        }
    });

}

var idActive = -1;
function inActiveStatus(id, flgStatus) {
    idActive = id;
    $('#confirm-edit-banner').modal('show');
}

function confirmActive(id) {
    window.location.href = getFullCurrentPath() + idActive +"/"+id+"/"+ '/update_active';
    idActive = -1;
}
function viewBannerPortal(id) {
    window.location.href = '/tat-ca-viec-lam/' + id;
}

function cloneBanner(id) {
    window.location.href = getFullCurrentPath() + id + '/clone';
}