package com.hcj.service.imp;

import com.hcj.dao.imp.MsgBoardDaoImp;
import com.hcj.model.po.MsgBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;

/**
 * Created by Moy on ÎåÔÂ29  029.
 */
@Service
@Transactional(rollbackFor = RuntimeException.class)
public class MsgBoardServiceImp {
    @Autowired
    private MsgBoardDaoImp dao;

    public void save(MsgBoard model) {
        dao.save(model);
    }

    public void deleteById(MsgBoard model) {
        dao.deleteById(model.getID());
    }

    @Transactional(readOnly = true, propagation = Propagation.NOT_SUPPORTED)
    public MsgBoard findById(MsgBoard model) {
        return dao.findById(model.getID());
    }

    @Transactional(readOnly = true, propagation = Propagation.NOT_SUPPORTED)
    public Map<String, Object> pageFind(Integer num, Integer size) {
        return dao.pageFind(num, size);
    }

    @Override
    public String toString() {
        return "MsgBoardServiceImp{" +
                "dao=" + dao +
                '}';
    }
}
