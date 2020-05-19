package com.mockProject.commons;

public class Management {

//    public static void main(String[] args) {
//    	createSchool();
//    	createClasses();
//        ConnectionUtil.getSessionFactory().close();
//    }
//
//    public static void createSchool() {
//    	File file = new File("dataSchool.csv");
//    	SessionFactory sessionFactory = ConnectionUtil.getSessionFactory();
//    	Session session = sessionFactory.openSession();
//		Transaction tx = null;
//		Scanner scanner = null;
//		try {
//			tx = session.beginTransaction();
//			scanner = new Scanner(file);
//			while (scanner.hasNextLine()) {
//				String[] matrix = scanner.nextLine().split(",");
//				School school = new School(matrix[0],matrix[1]);
//				session.save(school);	
//			}
//			tx.commit();
//		} catch (HibernateException e) {
//			if (tx != null) {
//				tx.rollback();
//				e.printStackTrace();
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			session.close();
//			scanner.close();
//		}
//    }
//    
//    
//    public static void createClasses() {
//    	File file = new File("dataClasses.csv");
//    	SessionFactory sessionFactory = ConnectionUtil.getSessionFactory();
//    	Session session = sessionFactory.openSession();
//		Transaction tx = null;
//		Scanner scanner = null;
//		try {
//			tx = session.beginTransaction();
//			scanner = new Scanner(file);
//			while (scanner.hasNextLine()) {
//				String[] matrix = scanner.nextLine().split(",");
//				Classes classes = new Classes(matrix[0],matrix[1],new School(matrix[2]));
//				session.save(classes);	
//			}
//			tx.commit();
//		} catch (HibernateException e) {
//			if (tx != null) {
//				tx.rollback();
//				e.printStackTrace();
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			session.close();
//			scanner.close();
//		}
//		
//	}

}
