package dao;

import entities.NewsCategory;
import org.hibernate.Session;
import util.HibernateUtil;

public class NewsCategoryDao {
    public Integer create(NewsCategory e){
        Session session = HibernateUtil.buildSessionFactory().openSession();
        session.beginTransaction();
        session.saveOrUpdate(e);
        session.getTransaction().commit();
        session.close();
        System.out.println("Успешно создан " + e.toString());
        return e.getId();
    }
}
