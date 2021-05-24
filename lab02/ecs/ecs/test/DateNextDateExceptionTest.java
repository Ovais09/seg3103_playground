

import java.util.LinkedList;

import java.util.List;

import org.junit.Assert;

import org.junit.Test;

import org.junit.runner.RunWith;

import org.junit.runners.Parameterized;

import org.junit.runners.Parameterized.Parameters;


@RunWith(Parameterized.class)
public class DateNextDateExceptionTest {
	
	int year;
	int month;
	int day;

	public DateNextDateExceptionTest(int year, int month, int day){
		this.year = year;
		this.month = month;
		this.day = day;
	}

	@Parameters
	public static List<Integer[]> data(){
		List<Integer[]> parameters = new LinkedList<Integer[]>();
		parameters.add(new Integer[] { 1500,2,31 });
		parameters.add(new Integer[] { 1500,2,29 });
		parameters.add(new Integer[] { -1,10,20 });
		return parameters;
	}

	@Test
	public void nextDateExceptionTest(){
		Assert.assertThrows(IllegalArgumentException.class, () -> new Date(year,month,day));
	}


}