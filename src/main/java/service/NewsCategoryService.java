package service;


import dao.NewsCategoryDao;
import entities.NewsCategory;

public class NewsCategoryService {
    NewsCategoryDao newsCategoryDao = new NewsCategoryDao();

    public Integer create(NewsCategory newsCategory){
       return newsCategoryDao.create(newsCategory);
    }
}
