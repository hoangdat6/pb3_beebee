package com.example.pbl3_1.dao;

import com.example.pbl3_1.dao.impl.AbstractDAOImpl;
import com.example.pbl3_1.entity.Category;
import org.junit.Assert;
import org.junit.Test;

public class TestDelete {
    @Test
    public void testDelete() {
        GenericDAO<Category> genericDAO = new AbstractDAOImpl<>();

        String sql = "delete from categories where id = ?";
        Assert.assertNotNull(genericDAO.delete(sql, 3));
    }
}
