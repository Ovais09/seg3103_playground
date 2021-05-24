import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class DateTest {

  @Test
  void nextDate_sample() {
    Date d = new Date(2020,5,3);
    assertEquals(new Date(2020,5,4), d.nextDate());
  }
  
  @Test
  void nextDate_Test1() {
    Date d = new Date(1700,6,20);
    assertEquals(new Date(1700,6,21), d.nextDate());
  }
  
  @Test
  void nextDate_Test2() {
    Date d = new Date(2005,4,15);
    assertEquals(new Date(2005,4,16), d.nextDate());
  }
  
  @Test
  void nextDate_Test3() {
    Date d = new Date(1901,7,20);
    assertEquals(new Date(1901,7,21), d.nextDate());
  }
  
  @Test
  void nextDate_Test4() {
    Date d = new Date(3456,3,27);
    assertEquals(new Date(3456,3,28), d.nextDate());
  }
  
  @Test
  void nextDate_Test5() {
    Date d = new Date(1500,2,17);
    assertEquals(new Date(1500,2,18), d.nextDate());
  }
  
  @Test
  void nextDate_Test6() {
    Date d = new Date(1700,6,29);
    assertEquals(new Date(1700,6,30), d.nextDate());
  }
  
   @Test
  void nextDate_Test7() {
    Date d = new Date(1800,11,29);
    assertEquals(new Date(1800,11,30), d.nextDate());
  }
  
  @Test
  void nextDate_Test8() {
    Date d = new Date(3453,1,29);
    assertEquals(new Date(3453,1,30), d.nextDate());
  }
  
   @Test
  void nextDate_Test9() {
    Date d = new Date(444,2,29);
    assertEquals(new Date(444,3,1), d.nextDate());
  }
  
  @Test
  void nextDate_Test10() {
    Date d = new Date(2005,4,30);
    assertEquals(new Date(2005,5,1), d.nextDate());
  }
  
   @Test
  void nextDate_Test11() {
    Date d = new Date(3453,1,30);
    assertEquals(new Date(3453,1,31), d.nextDate());
  }
  
  @Test
  void nextDate_Test12() {
    Date d = new Date(3456,3,30);
    assertEquals(new Date(3456,3,31), d.nextDate());
  }
  
   @Test
  void nextDate_Test13() {
    Date d = new Date(1901,7,31);
    assertEquals(new Date(1901,8,1), d.nextDate());
  }
  
  @Test
  void nextDate_Test14() {
    Date d = new Date(3453,1,31);
    assertEquals(new Date(3453,2,1), d.nextDate());
  }
  
   @Test
  void nextDate_Test15() {
    Date d = new Date(3456,12,31);
    assertEquals(new Date(3457,1,1), d.nextDate());
  }
  
  @Test
  void nextDate_Test16() {
    assertThrows(IllegalArgumentException.class, () -> new Date(1500,2,31));
  }
  
   @Test
  void nextDate_Test17() {
    assertThrows(IllegalArgumentException.class, () -> new Date(1500,2,29));
  }
  
  @Test
  void nextDate_Test18() {
    assertThrows(IllegalArgumentException.class, () -> new Date(-1,10,20));
  }
  
  

}