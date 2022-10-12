package djtest;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class TestJava {

	public static void main(String[] args) {
		
		String test = "이동준";
		for(int i = test.length()-1; i>=0; i--)
			System.out.print(test.charAt(i));
		System.out.println();
		
		
		// TODO Auto-generated method stub
		KBStudent a1 = new KBStudent("이유나", "여성", 24, 1);
		KBStudent a2 = new KBStudent("박준현", "남성", 44, 2);
		List<KBStudent> arr = new ArrayList<KBStudent>();
		KBStudent a3 = new KBStudent("이동준", "남성", 24, 1);
		KBStudent a4 = new KBStudent("이동준", "남성", 4, 4);
		arr.add(a1);
		arr.add(a2);
		arr.add(a4);
		

		System.out.println(arr.contains(a3));
		System.out.println(arr.contains(a4));
		
		for (KBStudent kbStudent : arr) {
			System.out.println(kbStudent);
		}

		Collections.sort(arr);
		System.out.println("--");
		for (KBStudent kbStudent : arr) {
			System.out.println(kbStudent);
		}
	}

}
