package controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import repository.Repository;

@RestController
@RequestMapping("/products")
public class Controller {

    private final Repository repository;

    public Controller(Repository repository) {
        this.repository = repository;
    }

    @GetMapping("/fetch-product")
    public String getProduct(@RequestParam("name") String name) {
        return repository.getProductName(name);
    }
}