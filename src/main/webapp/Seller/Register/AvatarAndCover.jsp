<%@ include file="../../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm ảnh đại diện và ảnh bìa</title>
    <link rel="stylesheet" href="./AvatarAndCover.css">
    <link rel="stylesheet" href="./Register.css">
    <link rel="stylesheet" href="../Common/SellerCommon.js">
    <link rel="stylesheet" href="../../CommonCSS.css">
    <script src="Register.js"></script>
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
                <form action="CompleteRegister.jsp" class="SR_form" action="" method="">
                    <div class="SR_form_item SR_form_item_cover">
                        <h3>Ảnh bìa</h3>
                        <label for="Cover">
                            <img id="CoverImage" src="../.././img/Logo/Image.png" alt="">
                            <span>Thêm ảnh bìa kích thước tỉ lệ 1:4</span>
                        </label>
                        <input type="file" id="Cover" accept="image/*" require>
                    </div>
                    
                    <div class="SR_form_item SR_form_item--avatar">
                        <div class="SR_form_item_avatar">
                            <h3>Ảnh đại diện</h3>
                            <label for="Avatar">
                                <img id="AvatarImage" src="../.././img/Logo/Image.png" alt="">
                                <span>Ảnh đại diện</span>
                            </label>
                            <input type="file" id="Avatar" accept="image/*" require>
                        </div>

                        <div class="SR_form_item_notation">
                            <p class="content"><span>*</span> Để chất lượng ảnh bìa tốt nhất, hãy chọn ảnh có kích thước  1 :4 (Chiều rộng bằng 4 lần chiều dài)</p>
                            <p class="content"><span>*</span> Ảnh đại diện nên là ảnh vuông</p>
                            <p class="content"><span>*</span> Kích thước các ảnh không vượt quá 4MB</p>
                        </div>
                    </div>
                    <div style="display: flex; flex-direction:row-reverse; gap: 15px" class="SR_form_item">
                        <input class="btn btn_Send" value="Hoàn tất" type="submit" require>
                        <input class="btn btn_Cancel" value="Hủy" type="submit" require>
                    </div>
                </form>
            </div>
        </main>
    </div>
    <script src="./AvatarAndCover.js"></script>
</body>

</html>