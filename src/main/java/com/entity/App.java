package com.entity;

import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.service.ServiceRegistry;

public class App {
	    // Hold a reusable reference to a SessionFactory (since we need only one)
	    @SuppressWarnings("unused")
		private static final SessionFactory sessionFactory = buildSessionFactory();


	    private static SessionFactory buildSessionFactory() {
	        // Create a StandardServiceRegistry
	        final ServiceRegistry registry = new StandardServiceRegistryBuilder().configure().build();
	        return new MetadataSources(registry).buildMetadata().buildSessionFactory();
	    }

	    public String toString() {
			String fullname = null;
			String email = null;
			String password = null;
			String about = null;
			String id = null;
			return "User [id=" + id + ", fullname=" + fullname + ", email=" + email + ", password=" + password + ", about="
					+ about + "]";
	    }
	}


