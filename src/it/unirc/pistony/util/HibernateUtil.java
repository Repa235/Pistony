package it.unirc.pistony.util;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	private static Logger logger = LogManager.getLogger(HibernateUtil.class);
    private static final SessionFactory sessionFactory = buildSessionFactory();
    
    private static SessionFactory buildSessionFactory() {
    	try {
        	SessionFactory sessionFactory = new Configuration().configure("/hibernate.cfg.xml").buildSessionFactory();
    		return sessionFactory;  	
        	//Oppure per una configurazione tramite programmazione
//        	StandardServiceRegistry standardRegistry = new StandardServiceRegistryBuilder().configure("it/unirc/pjam/hibernate/es_counter_dao/hibernate_counter_dao.cfg.xml").build();
//          Metadata metadata = new MetadataSources(standardRegistry).getMetadataBuilder().build();
//          return metadata.getSessionFactoryBuilder().build();
        } 
        catch (Throwable ex) {
			logger.error("Creazione del SessionFactory fallita");
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
    	return sessionFactory;
    }
    
    public static void close() {
    	sessionFactory.close();
    }
}