package com.example.pbl3_1.controller.dto.address;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class AddressDTO {
    Long id;
    String detail;
    String ward_value;
    String district_value;
    String province_value;
    String ward;
    String district;
    String province;
    String fullname;
    String phone;
    Boolean isDefault;
}
