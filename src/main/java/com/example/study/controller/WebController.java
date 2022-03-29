package com.example.study.controller;

import com.example.study.model.Customer;
import com.example.study.service.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class WebController {

    private CustomerService customerService;

    public WebController(CustomerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping("/")
    public String index (Model model){

        List<Customer> customers = customerService.findCustomers();

        model.addAttribute("customers", customers);

        return "index.html";
    }

}
