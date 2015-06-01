package com.hcj.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.lang.reflect.ParameterizedType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Moy on 五月29  029.
 */
public class BaseDao<T> {

    @Autowired
    private SessionFactory sessionFactory;
    private String mTable = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0].getTypeName();

    // 增加 修改一条留言
    public void save(T model) {
        Session session = getCurrentSession();
        session.clear();
        session.saveOrUpdate(model);
    }

    // 删除一条留言
    public void deleteById(Integer id) {
        String hql = "delete " + mTable + " m where m.ID=:ID";
        showHQL(hql);
        getCurrentSession().createQuery(hql).setParameter("ID", id).executeUpdate();
    }

    // 按id查询一条留言
    public T findById(Integer id) {
        String hql = "from " + mTable + " m where m.ID=:ID";
        showHQL(hql);
        return (T) getCurrentSession().createQuery(hql).setParameter("ID", id).list().get(0);
    }

    // 分页查询 页码 数量
    public Map<String, Object> pageFind(Integer num, Integer size) {
        String hql = "from " + mTable;
        showHQL(hql);
        List<T> Qrs = getCurrentSession().createQuery(hql).setFirstResult((num - 1) * size).setMaxResults(size).list();
        // 查总页数
        hql = "select count(*) from " + mTable;
        Integer numPage = Integer.parseInt(getCurrentSession().createQuery(hql).list().get(0).toString());
        Map<String, Object> rs = new HashMap<String, Object>();
        rs.put("RsSize", Qrs.size()); // 结果行数
        rs.put("QSize", size); // 查询行数
        rs.put("nowPage", num); // 当前页码
        numPage = numPage % size > 0 ? numPage / size + 1 : numPage / size;
        rs.put("numPage", numPage); // 总页码
        rs.put("rs", Qrs);
        return rs;
    }

    public void showHQL(String hql) {
        System.out.println("  # --> " + hql);
    }

    public Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }
}
