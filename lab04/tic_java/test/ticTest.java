package test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

import org.junit.jupiter.api.Test;

import jdk.jfr.Timestamp;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.Assert.*;

import src.tic;


public class ticTest {

     tic object = new tic();

    @Test 
    void test_emptyBoard (){
        // 1 X 1
        // assertEquals("_", object.emptyBoard(1,1));

        // 2 X 2 
        String [][] result = {{"_","_"}, {"_","_"}};
        assertArrayEquals(result,object.emptyBoard(2,2));
    
    }

    @Test
    void test_boardSize (){
        assertEquals(9, object.boardSize(3, 3));
    }

    @Test
    void test_defaultBoard (){
        String [][] result = {{"_","_","_"}, {"_","_","_"}, {"_","_","_"}};
        
        assertArrayEquals(result,object.defaultBoard());
    }

    @Test 
    void test_boardPositions (){
        assertEquals("X", object.positions(true, 0, 1));
        assertEquals("O", object.positions(false, 2, 0));
    }

    @Test 
    void test_winner () {
        assertEquals(false, object.winner());
    }

}
