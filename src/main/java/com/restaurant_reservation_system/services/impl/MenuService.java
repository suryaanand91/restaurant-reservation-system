package com.restaurant_reservation_system.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.restaurant_reservation_system.model.Menu;
import com.restaurant_reservation_system.repo.impl.MenuRepository;

@Service
public class MenuService {

    private final MenuRepository menuRepository;

    @Autowired
    public MenuService(MenuRepository menuRepository) {
        this.menuRepository = menuRepository;
    }

    public List<Menu> getAllMenus() {
        return menuRepository.findAll();
    }

    public Menu getMenuById(Long id) {
        return menuRepository.findById(id).orElse(null);
    }

    public Menu createMenu(Menu menu) {
        return menuRepository.save(menu);
    }

    public Menu updateMenu(Long id, Menu menuDetails) {
        Menu menu = getMenuById(id);
        if (menu != null) {
            menu.setName(menuDetails.getName());
            menu.setDescription(menuDetails.getDescription());
            menu.setPrice(menuDetails.getPrice());
            menu.setAvailable(menuDetails.getAvailable());
            return menuRepository.save(menu);
        }
        return null;
    }

    public void deleteMenu(Long id) {
        menuRepository.deleteById(id);
    }
}