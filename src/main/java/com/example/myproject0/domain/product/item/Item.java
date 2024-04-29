package com.example.myproject0.domain.product.item;

import jakarta.validation.constraints.NotBlank;
import lombok.Data;
import lombok.Getter;
import org.hibernate.validator.constraints.Range;

@Data
@Getter
public class Item {

    private Long itemId;
    @NotBlank(message = "반드시 값을 입력해주세요")
    private String itemName;

    @Range(min = 0, max = 10000, message = "0~10000사이의 값을 입력해주세요!")
    @NotBlank(message = "반드시 값을 입력해주세요")
    private String itemPrice;

    public Item(String itemName, String itemPrice) {
        this.itemName = itemName;
        this.itemPrice = itemPrice;
    }
}
