package src;

public class tic {

    public  String[][] emptyBoard(int rows, int columns){
        String [][] board = new String [rows][columns];

        for (int i= 0; i<rows; i++){
            for(int j=0; j<columns; j++){
                board[i][j] = "_";
            }
        }

        return board;

    }
    
}