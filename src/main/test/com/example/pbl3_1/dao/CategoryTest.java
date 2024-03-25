package com.example.pbl3_1.dao;

import com.example.pbl3_1.dao.impl.CategoryDAOImpl;
import com.example.pbl3_1.entity.Category;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.junit.Assert.assertTrue;

public class CategoryTest {
    @Test
    public void testSave() {
        CategoryDAO categoryDAO = new CategoryDAOImpl();
        Category category = new Category();
        category.setName("Test");
        categoryDAO.save(category);
    }

    @Test
    public void createStream_whenFindFirstResultIsPresent_thenCorrect() {


        List<String> list = new ArrayList<>(1);

        Optional<String> result = list.stream().findFirst();

//        assertTrue(result.isPresent());
//        assertThat(result.get(), is("A"));
        System.out.println(result.get());
    }
}
