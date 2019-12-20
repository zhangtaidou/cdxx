package com.yijiayifeng;

import com.yijiayifeng.controller.SpecialtyController;
import com.yijiayifeng.entity.Total;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest
@RunWith(SpringRunner.class)

public class test {
    @Autowired
    private SpecialtyController specialtyController;

    @Test
    public void a() {
        Total total = specialtyController.selectSpecialty_order();
        System.out.println(total);
    }
}
