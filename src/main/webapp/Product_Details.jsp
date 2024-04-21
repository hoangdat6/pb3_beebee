<%--<jsp:useBean id="productDetail" scope="session" type="com.example.pbl3_1.controller.dto.product.ProductDetailDTO"/>--%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
    <%@ include file="common/taglib.jsp" %>
        <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

            <!DOCTYPE html>
            <html lang="vi">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Product Details</title>
                <link rel="stylesheet" type="text/css" href="style.css">
                <link rel="stylesheet" type="text/css" href="Product-Detail.css">
                <link rel="stylesheet" type="text/css" href="Top-Bar.css">
                <link rel="stylesheet" type="text/css" href="Footer.css">
                <link rel="stylesheet" type="text/css" href="CommonCSS.css">
                <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                <script type="text/javascript" src="main.js"></script>
                <script type="text/javascript" src="./toast.js"></script>
                <link rel="stylesheet" type="text/css" href="./toast.css">
            </head>

            <body>
                <%-- Header --%>
                <%@ include file="Top-Bar.jsp" %>
                        <fmt:setLocale value="vi_VN" />
                        <div id="toast">

                        </div>

                        <div id="PD-Content">
                            <div class="Product_Loop">
                                <div class="Product_Loop-left">
                                    <div class="Product_Loop-Image">
                                        <div class="Main-Image" style="background: url(${productDetail.productImgPath[0]}) center/cover no-repeat;">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale" id="${productDetail.discount}">-${productDetail.discount}%</span>
                                        </div>
                                        <div class="Secondary-Image">
                                            <img src="${productDetail.productImgPath[1]}" alt="#">
                                            <img src="${productDetail.productImgPath[2]}" alt="#">
                                            <img src="${productDetail.productImgPath[3]}" alt="#">
                                            <i class="fa-solid fa-chevron-right Next"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="Product_Loop-right">
                                    <div class="Product-Content">
                                        <div class="Product-Evaluation">
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-regular fa-star"></i>
                                            <span>16k lượt đánh giá</span>
                                        </div>
                                        <span style="font-size: 20px; line-height: 1.6; margin: 15px 0;" id="Product-Name">${productDetail.name}</span>
                                        <div class="Product-Price">
<%--                                            <c:if test=""></c:if>--%>
                                            <c:if test="${productDetail.minPrice != productDetail.maxPrice}">
                                                <span class="old-Price">
                                                    <fmt:formatNumber value="${productDetail.minPrice}" type="currency" /> -
                                                    <fmt:formatNumber value="${productDetail.maxPrice}" type="currency" />
                                                </span>
                                                <span class="new-Price">
                                                    <fmt:formatNumber value="${productDetail.minPrice * (1 - productDetail.discount / 100)}" type="currency" /> -
                                                    <fmt:formatNumber value="${productDetail.maxPrice * (1 - productDetail.discount / 100)}" type="currency" />
                                                </span>
                                            </c:if>

                                            <c:if test="${productDetail.minPrice == productDetail.maxPrice}">
                                                <span class="old-Price">
                                                    <fmt:formatNumber value="${productDetail.maxPrice}" type="currency" />
                                                </span>
                                                <span class="new-Price">
                                                    <fmt:formatNumber value="${productDetail.maxPrice * (1 - productDetail.discount / 100)}" type="currency" />
                                                </span>
                                            </c:if>

                                        </div>
                                        <div class="Product_category">
                                            <c:set var="cnt" value="1" />
                                            <c:forEach var="variation" items="${productDetail.variations}">
                                            <div class="Category_item">
                                                <h3 style="font-size: 16px; color:#333; margin-right: 20px;">${variation.name}</h3>
                                                <div class="Category_container">
                                                    <c:forEach var="option" items="${variation.variationOptions}">
                                                    <button id="${option.id}" class="Category_option${cnt}">${option.value}</button>
                                                    </c:forEach>
                                                </div>

                                            </div>
                                            <c:set var="cnt" value="${cnt + 1}" />
                                            </c:forEach>

                                        </div>
                                        <div style="font-size: 14px; margin-bottom: 12px"><span id="quantity">${productDetail.quantity}</span> sản phẩm có sẵn</div>
                                    </div>

                                    <div class="Product_Loop-Button">
                                        <div class="Qty">
                                            <button class="btn Qty__Minus" onclick="decreaseQuantity(this)"><i
                                                    class="fa-solid fa-minus"></i></button>
                                            <label>
                                                <input class="btn Qty__Input" type="number" value="1" min="1">
                                            </label>
                                            <button class="btn Qty__Plus" onclick="increaseQuantity(this)"><i
                                                    class="fa-solid fa-plus"></i></button>
                                        </div>
                                        <button class="btn Add-to-Cart Same" onclick="saveToCart()">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                            <p>Thêm vào giỏ hàng</p>
                                        </button>

                                        <button class="btn Add-to-Favorite Same">
                                            <i class="fa-regular fa-heart"></i>
                                            <p>Yêu thích</p>
                                        </button>
                                    </div>
                                    <button class="btn Buy">Mua ngay</button>
                                    <div class="Product-Menu">
                                        Danh mục
                                        <span>${productDetail.categoryName}</span>
                                    </div>
                                    <div class="Product-Info">
                                        <div class="Heading-Container"
                                            style="display: flex; justify-content:space-between">
                                            <h3>Thông tin thêm về sản phẩm</h3>
                                            <i class="fa-solid fa-chevron-right"></i>
                                        </div>
                                        <div class="text-description" style="max-width: 650px">${productDetail.description}</div>
                                    </div>
                                </div>

                            </div>
                            <div class="Shop">
                                <img src="${productDetail.sellerAvatar}" alt="Logo Shop">
                                <div class="Shop-Content">
                                    <h3>${productDetail.sellerName}</h3>
                                    <div class="Shop-Evaluation">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <span>16k lượt đánh giá</span>
                                    </div>
                                </div>
                            </div>
                            <div class="Tabs pad-l-r-170">
                                <div class="Tabs-Menu">
                                    <button class="Tabs-Menu__Item1 btn">Thông tin chi tiết về sản phẩm</button>
                                    <button class="Tabs-Menu__Item2 btn">Câu hỏi</button>
                                    <button class="Tabs-Menu__Item3 btn">Đánh giá</button>
                                </div>
                                <div class="Review-Section">
                                    <h3>11 Đánh giá</h3>
                                    <button class="btn"
                                        style="display: flex; justify-content:space-between; width: 256px;">
                                        <span>Mới nhất</span>
                                        <i class="fa-solid fa-chevron-down"></i>
                                    </button>

                                    <div class="Review-Item">
                                        <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg"
                                            alt="Avatar">
                                        <div class="Review-Item--Content">
                                            <h4 class="Review-Item__Name">Sofia Havetz</h4>
                                            <div class="Review-Item__Evaluation">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-regular fa-star"></i>
                                            </div>
                                            <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back
                                                just
                                                to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et
                                                iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                                                deleniti atque corrupt et quas molestias excepturi sint non provident.
                                            </p>
                                            <div class="Review-Respond">
                                                <button class="btn"><i class="fa-regular fa-thumbs-up"></i>
                                                    Like</button>
                                                <button class="btn"><i class="fa-regular fa-comment-dots"></i>
                                                    Reply</button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Review-Item">
                                        <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg"
                                            alt="Avatar">
                                        <div class="Review-Item--Content">
                                            <h4 class="Review-Item__Name">Sofia Havetz</h4>
                                            <div class="Review-Item__Evaluation">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-regular fa-star"></i>
                                            </div>
                                            <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back
                                                just
                                                to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et
                                                iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                                                deleniti atque corrupt et quas molestias excepturi sint non provident.
                                            </p>
                                            <div class="Review-Respond">
                                                <button class="btn"><i class="fa-regular fa-thumbs-up"></i>
                                                    Like</button>
                                                <button class="btn"><i class="fa-regular fa-comment-dots"></i>
                                                    Reply</button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Review-Item">
                                        <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg"
                                            alt="Avatar">
                                        <div class="Review-Item--Content">
                                            <h4 class="Review-Item__Name">Sofia Havetz</h4>
                                            <div class="Review-Item__Evaluation">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-regular fa-star"></i>
                                            </div>
                                            <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back
                                                just
                                                to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et
                                                iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                                                deleniti atque corrupt et quas molestias excepturi sint non provident.
                                            </p>
                                            <div class="Review-Respond">
                                                <button class="btn"><i class="fa-regular fa-thumbs-up"></i>
                                                    Like</button>
                                                <button class="btn"><i class="fa-regular fa-comment-dots"></i>
                                                    Reply</button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Review-Item">
                                        <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg"
                                            alt="Avatar">
                                        <div class="Review-Item--Content">
                                            <h4 class="Review-Item__Name">Sofia Havetz</h4>
                                            <div class="Review-Item__Evaluation">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-regular fa-star"></i>
                                            </div>
                                            <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back
                                                just
                                                to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et
                                                iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                                                deleniti atque corrupt et quas molestias excepturi sint non provident.
                                            </p>
                                            <div class="Review-Respond">
                                                <button class="btn"><i class="fa-regular fa-thumbs-up"></i>
                                                    Like</button>
                                                <button class="btn"><i class="fa-regular fa-comment-dots"></i>
                                                    Reply</button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Review-Item">
                                        <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg"
                                            alt="Avatar">
                                        <div class="Review-Item--Content">
                                            <h4 class="Review-Item__Name">Sofia Havetz</h4>
                                            <div class="Review-Item__Evaluation">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-regular fa-star"></i>
                                            </div>
                                            <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back
                                                just
                                                to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et
                                                iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                                                deleniti atque corrupt et quas molestias excepturi sint non provident.
                                            </p>
                                            <div class="Review-Respond">
                                                <button class="btn"><i class="fa-regular fa-thumbs-up"></i>
                                                    Like</button>
                                                <button class="btn"><i class="fa-regular fa-comment-dots"></i>
                                                    Reply</button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Review-Item">
                                        <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg"
                                            alt="Avatar">
                                        <div class="Review-Item--Content">
                                            <h4 class="Review-Item__Name">Sofia Havetz</h4>
                                            <div class="Review-Item__Evaluation">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-regular fa-star"></i>
                                            </div>
                                            <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back
                                                just
                                                to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et
                                                iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                                                deleniti atque corrupt et quas molestias excepturi sint non provident.
                                            </p>
                                            <div class="Review-Respond">
                                                <button class="btn"><i class="fa-regular fa-thumbs-up"></i>
                                                    Like</button>
                                                <button class="btn"><i class="fa-regular fa-comment-dots"></i>
                                                    Reply</button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Review-Item">
                                        <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg"
                                            alt="Avatar">
                                        <div class="Review-Item--Content">
                                            <h4 class="Review-Item__Name">Sofia Havetz</h4>
                                            <div class="Review-Item__Evaluation">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-regular fa-star"></i>
                                            </div>
                                            <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back
                                                just
                                                to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et
                                                iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                                                deleniti atque corrupt et quas molestias excepturi sint non provident.
                                            </p>
                                            <div class="Review-Respond">
                                                <button class="btn"><i class="fa-regular fa-thumbs-up"></i>
                                                    Like</button>
                                                <button class="btn"><i class="fa-regular fa-comment-dots"></i>
                                                    Reply</button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Review-Item">
                                        <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg"
                                            alt="Avatar">
                                        <div class="Review-Item--Content">
                                            <h4 class="Review-Item__Name">Sofia Havetz</h4>
                                            <div class="Review-Item__Evaluation">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-regular fa-star"></i>
                                            </div>
                                            <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back
                                                just
                                                to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et
                                                iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                                                deleniti atque corrupt et quas molestias excepturi sint non provident.
                                            </p>
                                            <div class="Review-Respond">
                                                <button class="btn"><i class="fa-regular fa-thumbs-up"></i>
                                                    Like</button>
                                                <button class="btn"><i class="fa-regular fa-comment-dots"></i>
                                                    Reply</button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Review-Item">
                                        <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg"
                                            alt="Avatar">
                                        <div class="Review-Item--Content">
                                            <h4 class="Review-Item__Name">Sofia Havetz</h4>
                                            <div class="Review-Item__Evaluation">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-regular fa-star"></i>
                                            </div>
                                            <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back
                                                just
                                                to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et
                                                iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                                                deleniti atque corrupt et quas molestias excepturi sint non provident.
                                            </p>
                                            <div class="Review-Respond">
                                                <button class="btn"><i class="fa-regular fa-thumbs-up"></i>
                                                    Like</button>
                                                <button class="btn"><i class="fa-regular fa-comment-dots"></i>
                                                    Reply</button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Review-Item">
                                        <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg"
                                            alt="Avatar">
                                        <div class="Review-Item--Content">
                                            <h4 class="Review-Item__Name">Sofia Havetz</h4>
                                            <div class="Review-Item__Evaluation">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-regular fa-star"></i>
                                            </div>
                                            <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back
                                                just
                                                to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et
                                                iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                                                deleniti atque corrupt et quas molestias excepturi sint non provident.
                                            </p>
                                            <div class="Review-Respond">
                                                <button class="btn"><i class="fa-regular fa-thumbs-up"></i>
                                                    Like</button>
                                                <button class="btn"><i class="fa-regular fa-comment-dots"></i>
                                                    Reply</button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Review-Item">
                                        <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg"
                                            alt="Avatar">
                                        <div class="Review-Item--Content">
                                            <h4 class="Review-Item__Name">Sofia Havetz</h4>
                                            <div class="Review-Item__Evaluation">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-regular fa-star"></i>
                                            </div>
                                            <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back
                                                just
                                                to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et
                                                iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                                                deleniti atque corrupt et quas molestias excepturi sint non provident.
                                            </p>
                                            <div class="Review-Respond">
                                                <button class="btn"><i class="fa-regular fa-thumbs-up"></i>
                                                    Like</button>
                                                <button class="btn"><i class="fa-regular fa-comment-dots"></i>
                                                    Reply</button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <button class="See-More">Xem thêm</button>
                            </div>

                            <div class="Similar_Product pad-l-r-170">
                                <h3>Sản phẩm tương tự</h3>
                                <span>Nhiều sản phẩm hơn ></span>
                                <div class="line"></div>
                                <div class="Product-List" style="background: #fff;">
                                    <div class="Product-Card">
                                        <div class="Product-Image">
                                            <span class="Hot">Hot</span>
                                            <span class="Discount">- 50%</span>
                                        </div>
                                        <div class="Product-Desc">
                                            <%--@declare id="pd-brand-avatar" --%>
                                                <h3>Áo thun nữ co dãn</h3>
                                                <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit
                                                    amet
                                                    consectetur.</p>
                                                <div class="PD-Brand-Avatar"></div>
                                                <label for="PD-Brand-Avatar">Tên Shop</label>
                                                <div class="clear"></div>
                                                <div class="Line"></div>
                                                <div class="Product-Bot-Container">
                                                    <div class="Product-Price">
                                                        <span class="new-Price">
                                                            120.000₫
                                                        </span>
                                                        <span class="old-Price">
                                                            240.000₫
                                                        </span>
                                                    </div>
                                                    <div class="Product-Button">
                                                        <i class="fa-regular fa-heart"></i>
                                                        <i class="fa-solid fa-cart-shopping"></i>
                                                    </div>
                                                    <div class="Product-Evaluation">
                                                        <i class="fa-solid fa-star"></i>
                                                        <i class="fa-solid fa-star"></i>
                                                        <i class="fa-solid fa-star"></i>
                                                        <i class="fa-solid fa-star"></i>
                                                        <i class="fa-regular fa-star"></i>
                                                    </div>
                                                </div>
                                        </div>
                                    </div>

                                    <div class="Product-Card">
                                        <div class="Product-Image">
                                            <span class="Hot">Hot</span>
                                            <span class="Discount">- 50%</span>
                                        </div>
                                        <div class="Product-Desc">
                                            <h3>Áo thun nữ co dãn</h3>
                                            <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet
                                                consectetur.</p>
                                            <div class="PD-Brand-Avatar"></div>
                                            <label for="PD-Brand-Avatar">Tên Shop</label>
                                            <div class="clear"></div>
                                            <div class="Line"></div>
                                            <div class="Product-Bot-Container">
                                                <div class="Product-Price">
                                                    <span class="new-Price">
                                                        120.000₫
                                                    </span>
                                                    <span class="old-Price">
                                                        240.000₫
                                                    </span>
                                                </div>
                                                <div class="Product-Button">
                                                    <i class="fa-regular fa-heart"></i>
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                </div>
                                                <div class="Product-Evaluation">
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-regular fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Product-Card">
                                        <div class="Product-Image">
                                            <span class="Hot">Hot</span>
                                            <span class="Discount">- 50%</span>
                                        </div>
                                        <div class="Product-Desc">
                                            <h3>Áo thun nữ co dãn</h3>
                                            <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet
                                                consectetur.</p>
                                            <div class="PD-Brand-Avatar"></div>
                                            <label for="PD-Brand-Avatar">Tên Shop</label>
                                            <div class="clear"></div>
                                            <div class="Line"></div>
                                            <div class="Product-Bot-Container">
                                                <div class="Product-Price">
                                                    <span class="new-Price">
                                                        120.000₫
                                                    </span>
                                                    <span class="old-Price">
                                                        240.000₫
                                                    </span>
                                                </div>
                                                <div class="Product-Button">
                                                    <i class="fa-regular fa-heart"></i>
                                                    <i class="fa-solid fa-cart-shopping"></i>
                                                </div>
                                                <div class="Product-Evaluation">
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-regular fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn"> <i class="fa-solid fa-chevron-right"></i> </button>
                            </div>
                        </div>
                        <script type="text/javascript" src="./Product_Details.js"></script>
                        <%@ include file="Footer.jsp" %>
            </body>