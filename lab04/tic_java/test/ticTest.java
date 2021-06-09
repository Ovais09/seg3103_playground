package test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

import org.junit.jupiter.api.Test;

import src.tic;


public class ticTest {

     tic object = new tic();

    @Test 
    void test (){
        assertEquals("_", object.emptyBoard_1X1(1,1));
    }
    
}
