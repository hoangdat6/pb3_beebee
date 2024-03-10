package com.example.pbl3_1.dao;

import com.example.pbl3_1.dao.impl.ProductDAOImpl;
import com.example.pbl3_1.entity.Category;
import com.example.pbl3_1.entity.Product;
import org.junit.Test;

import java.util.List;

public class ProductDAOImplTest {
    @Test
    public void testSave() throws Exception {
        String name = "Chính hãng dép đúc bánh mì Calm Slide quai ngang nam nữ nguyên khối đế cao su EVA BẢN CAO CẤP siêu nhẹ siêu êm";
        String description = "Chính hãng dép đúc full size nam nữ, đế cao su EVA 2 màu siêu nhẹ, mẫu mới hot trend 2023\n" +
                "? Thông tin sản phẩm:\n" +
                "- Quai giả da bền bỉ.\n" +
                "- Lót quai vải đàn hồi êm chân.\n" +
                "- Đế chất liệu Eva siêu nhẹ đúc nguyên khối cực êm chân, bền bỉ, form ôm chân và thoải mái vu vi khi di chuyển đi chơi lâu, độ mài mòn rất bền.\n" +
                "- Phù hợp để đi chơi, dạo phố...\n" +
                "- Dép quai ngang là lựa chọn không thể thiếu, thoải mái phối đồ dễ dàng, mang đi chơi đi học đi làm đều được với mọi phong cách thời trang.\n" +
                "---------------------\n" +
                "• dép quai ngang\n" +
                "• dép đế xuồng\n" +
                "• dép bánh mì\n" +
                "\n" +
                "? CAM KẾT:  Mẫu dép quai ngang  chuẩn ảnh, cam kết giống hình 100%\n" +
                "• Thanh toán khi nhận hàng.\n" +
                "• Nhận dép không đúng hình shop sẽ hoàn tiền.\n" +
                "• Đổi 1 đổi 1 nếu hỏng từ phía nhà sản xuất.\n" +
                "• Mang không vừa sẽ hỗ trợ đổi size cho khách.\n" +
                "\n" +
                "? Hướng dẫn dụng dép quai ngang\n" +
                "- Tránh để ngoài vị trí có ánh nắng trực tiếp từ 2 tiếng trở lên.\n" +
                "- Khi rửa nước, đi mưa xong nên phơi khô bằng cách để nơi khô ráo, dựng đứng dép để mau khô, tránh ẩm thấp quá lâu sẽ làm giảm độ bền.\n" +
                "- Không để nơi ẩm thấp hay nơi có nhiệt đô cao.\n" +
                "\n" +
                "? Điều kiện áp dụng đổi trả dép quai ngang trong vòng 07 ngày từ khi nhận hàng).\n" +
                "- Sản phầm vẫn còn mới, chưa qua sử dụng.\n" +
                "- Sản phầm bị lỗi, hư hỏng do nhà sản xuất.\n" +
                "- Sản phầm không đúng size, mẫu mã như quý khách đặt.\n" +
                "- Số lượng không đủ như trong đơn hàng.\n" +
                "\n" +
                "?Trường hợp không đủ điều kiện áp dụng đổi trả dép quai ngang\n" +
                "- Vượt quá 07 ngày kể từ khi nhận sản phẩm.\n" +
                "- Đổi trả không đúng mẫu mã, không mặt hàng quý khách đã nhận.\n" +
                "- Không đổi trả với lý do thích, không hợp, đặt nhầm sản phẩm, nhầm màu sắc.\n" +
                "Hỗ trợ bảo hành miễn phí đối với trường hợp bung keo, bung chỉ.\n" +
                "Thời gian bảo hành 1 tháng kể từ thời điểm mua hàng.\n" +
                "Sản phẩm phải được vệ sinh sạch sẽ trước khi gửi bảo hành!";

//        Category ca = new Category();
//        ca.setId(1);


        Product product = Product.builder().name(name).description(description).categoryId(null).productImgPath(null).sellerId(null).createdAt(null).build();

        ProductDAO productDAO = new ProductDAOImpl();

        System.out.println(productDAO.addProduct(product));
    }

    @Test
    public void testGetProduct(){
        ProductDAO productDAO = new ProductDAOImpl();

        List<Product> list = productDAO.getProducts();

        for(Product p : list){
            System.out.println(p.toString());
        }
    }
}
