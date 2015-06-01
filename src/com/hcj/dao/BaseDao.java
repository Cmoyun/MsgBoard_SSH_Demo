package com.hcj.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.lang.reflect.ParameterizedType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Moy on ����29  029.
 */
public class BaseDao<T> {

    @Autowired
    private SessionFactory sessionFactory;
    private String mTable = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0].getTypeName();

    // ���� �޸�һ������
    public void save(T model) {
        Session session = getCurrentSession();
        session.clear();
        session.saveOrUpdate(model);
    }

    // ɾ��һ������
    public void deleteById(Integer id) {
        String hql = "delete " + mTable + " m where m.ID=:ID";
        showHQL(hql);
        getCurrentSession().createQuery(hql).setParameter("ID", id).executeUpdate();
    }

    // ��id��ѯһ������
    public T findById(Integer id) {
        String hql = "from " + mTable + " m where m.ID=:ID";
        showHQL(hql);
        return (T) getCurrentSession().createQuery(hql).setParameter("ID", id).list().get(0);
    }

    // ��ҳ��ѯ ҳ�� ����
    public Map<String, Object> pageFind(Integer num, Integer size) {
        String hql = "from " + mTable;
        showHQL(hql);
        List<T> Qrs = getCurrentSession().createQuery(hql).setFirstResult((num - 1) * size).setMaxResults(size).list();
        // ����ҳ��
        hql = "select count(*) from " + mTable;
        Integer numPage = Integer.parseInt(getCurrentSession().createQuery(hql).list().get(0).toString());
        Map<String, Object> rs = new HashMap<String, Object>();
        rs.put("RsSize", Qrs.size()); // �������
        rs.put("QSize", size); // ��ѯ����
        rs.put("nowPage", num); // ��ǰҳ��
        numPage = numPage % size > 0 ? numPage / size + 1 : numPage / size;
        rs.put("numPage", numPage); // ��ҳ��
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
