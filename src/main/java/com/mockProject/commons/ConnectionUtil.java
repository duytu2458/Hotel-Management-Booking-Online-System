package com.mockProject.commons;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 * The Class ConnectionUtil.
 *
 * Version 1.0
 *
 * Date: 23-03-2020
 *
 * Copyright 
 *
 * Modification Logs:
 * DATE                 AUTHOR          DESCRIPTION
 * -----------------------------------------------------------------------
 * 03-04-2020           ThanhLP         Create
 */
/**
 * @author ThanhLP
 *
 */
public class ConnectionUtil {

    /** The session factory. */
    private static SessionFactory sessionFactory = null;

    /**
     * Gets the session factory.
     *
     * @return the session factory
     */
    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            Configuration configuration = new Configuration();
            configuration.configure();
            ServiceRegistry reg = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties())
                    .build();
            sessionFactory = configuration.buildSessionFactory(reg);
        }
        return sessionFactory;
    }
}
