<%@ include file="../../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm ảnh đại diện và ảnh bìa</title>
    <link rel="stylesheet" href="<c:url value="/seller/account/AvatarAndCover.css"/>">
    <link rel="stylesheet" href="<c:url value="/seller/account/Register.css"/>">
    <link rel="stylesheet" href="<c:url value="/seller/common/SellerCommon.css"/>">
    <link rel="stylesheet" href="<c:url value="/CommonCSS.css"/>">
    <script src="<c:url value="/seller/account/Register.js"/>"></script>
</head>

<body>
    <div class="SR_wrap">
        <!-- SR - Seller register -->
        <script>
            avatarAndCoverSidebar();
        </script>
        <main class="SR_main">
            <h3 class="SR_main_title">
                Thêm ảnh đại diện và ảnh bìa
            </h3>
            <div class="SR_main_content">
                    <form action="<c:url value="/seller/account/register?action=avatar"/>" class="SR_form" method="post" enctype="multipart/form-data">
                        <div class="SR_form_item SR_form_item_cover">
                            <h3>Ảnh bìa</h3>
                            <label for="Cover">
                                <img id="CoverImage" src="<c:url value="/img/Logo/Image.png"/>" alt="Ảnh bìa">
                                <span>Thêm ảnh bìa kích thước tỉ lệ 1:4</span>
                            </label>
                            <input type="file" id="Cover" name="cover" accept="image/*" required>
                        </div>

                        <div class="SR_form_item SR_form_item--avatar">
                            <div class="SR_form_item_avatar">
                                <h3>Ảnh đại diện</h3>
                                <label for="Avatar">
                                    <img id="AvatarImage" src="<c:url value="/img/Logo/Image.png"/>" alt="Ảnh đại diện">
                                    <span>Ảnh đại diện</span>
                                </label>
                                <input type="file" id="Avatar" name="avatar" accept="image/*" required>
                            </div>

                            <div class="SR_form_item_notation">
                                <p class="content"><span>*</span> Để chất lượng ảnh bìa tốt nhất, hãy chọn ảnh có kích thước  1 :4 (Chiều rộng bằng 4 lần chiều dài)</p>
                                <p class="content"><span>*</span> Ảnh đại diện nên là ảnh vuông</p>
                                <p class="content"><span>*</span> Kích thước các ảnh không vượt quá 4MB</p>
                            </div>
                        </div>
                        <div style="display: flex; flex-direction:row-reverse; gap: 15px" class="SR_form_item">
                            <input class="btn btn_Send" name="button" value="Xác nhận" type="submit" >
                            <input class="btn btn_Cancel" name="button" value="Hủy" onclick="cancelUpload(this)">
                        </div>
                </form>

                <form action="<c:url value="/seller/account/register"/>" class="SR_form"  id="cancel" method="get">
                </form>
            </div>

        </main>
    </div>
    <script src="<c:url value="/seller/account/AvatarAndCover.js"/>"></script>
</body>

</html>