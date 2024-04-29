package com.example.myproject0.domain.product.item;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.Range;

@Data
@Getter
@Setter
public class Item {

    private Long itemId;
    @NotNull
    @NotBlank(message = "공백 XX")
    private String itemName;

    @Range(min = 0, max = 10000)
    @NotBlank(message = "공백 XX")
    private String itemPrice;

    public Item(String itemName, String itemPrice) {
        this.itemName = itemName;
        this.itemPrice = itemPrice;
    }
}
