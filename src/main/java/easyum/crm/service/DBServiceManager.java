package easyum.crm.service;


import easyum.crm.model.Manager;

import java.util.List;
import java.util.Optional;

public interface DBServiceManager {

    Manager saveManager(Manager client);

    Optional<Manager> getManager(String no);

    List<Manager> findAll();
}
