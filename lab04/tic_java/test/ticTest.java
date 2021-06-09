package test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.Assert.*;

import src.tic;


public class ticTest {

     tic object = new tic();

    @Test 
    void test (){
        // 1 X 1
        // assertEquals("_", object.emptyBoard(1,1));

        // 2 X 2 
        String [][] result = {{"_","_"}, {"_","_"}};
        assertArrayEquals(result,object.emptyBoard(2,2));
    
}

}
