package com.example.myproject0.web.controller;

import com.example.myproject0.domain.product.item.Item;
import com.example.myproject0.mapper.ItemMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;


@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/item")
public class ItemController {
    private final ItemMapper mapper;

    @PostMapping("/insert")
    public String insert(@Validated @ModelAttribute Item item, BindingResult bindingResult, RedirectAttributes rttr) {
        if (bindingResult.hasErrors()) {
            bindingResult.getAllErrors().forEach(System.out::println);
            bindingResult.reject("range.item.price",new Object[]{0,10000},null);
            return "redirect:/item/items";
        }
        int rowCount = mapper.insert(item);
        rttr.addFlashAttribute("message", item.getItemName() + " 입력됨!");
        return "redirect:/item/items";
    }

    @GetMapping("/select")
    public String select(String search,Model model, RedirectAttributes rttr) {
        Item selectedItem = mapper.select(search);
        model.addAttribute("selected", selectedItem);
        model.addAttribute("prevName", selectedItem.getItemId());
        rttr.addFlashAttribute("selected", selectedItem);
        rttr.addFlashAttribute("message", selectedItem.getItemName() + " 선택됨!");
        return "redirect:/item/items";
    }

    @PostMapping("/update")
    public String itemUpdate(@Validated Item item,String prevName, RedirectAttributes rttr) {
        System.out.println("item = " + item);
        System.out.println("prevName = " + prevName);
        int rowCount = mapper.update(item,prevName);
        rttr.addFlashAttribute("message",  item.getItemName()+ " 수정됨!");
        return "redirect:/item/items";
    }

    @PostMapping("/delete")
    public String delete12(Item item, RedirectAttributes rttr) {
        int rowCount = mapper.delete(item);
        rttr.addFlashAttribute("message", rowCount + " 삭제됨! 이름: " + item.getItemName());
        return "redirect:/item/items";
    }










    @GetMapping("/items")
    public String Items (Model model) {
        List<Item> items = mapper.findAllItems();
        model.addAttribute("items", items);
        return "item/items";
    }
    
}
