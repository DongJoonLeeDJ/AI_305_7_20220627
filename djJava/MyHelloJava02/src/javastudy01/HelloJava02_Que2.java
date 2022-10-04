package javastudy01;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class HelloJava02_Que2 {

	public static void main(String[] args) {
		// 배열 : 크기가 고정되고 특정 인덱스에 값 수정함
		// ArrayList : 크기가 고정되어 있지 않음.
		// 대신 값이 이미 들어간 부분에 대해서는 값 수정가능
		// 그리고 특정 부분 삭제 가능 -> 삭제하면 길이가 변함

		// 표기법 두 가지가 있다. 두번째 방식을 많이 쓰지만
		// 일단 첫번째 방식으로 표기할 것
		ArrayList<Integer> numbers = new ArrayList<Integer>();
		// 이 방식을 이해하려면 알아야 하는 지식
		// 다형성이랑 인터페이스를 알아야 이해 가능
		List<Integer> nums = new ArrayList<Integer>();
		Scanner s = new Scanner(System.in);
		for (int i = 0; i < 5; i++) {
			System.out.println(i + 1 + "번째 숫자 입력하기");
			// 숫자 입력해서 바로 집어넣는다.
			//nums.add(s.nextInt());//자바스크립트의 push와 유사
			int temp = s.nextInt();
			nums.add(temp);
		}
		// foreach 적고 ctrl space
		// 참고로 코드 정렬은 ctrl shift f 누르면 됨
		for (Integer integer : nums) {
			System.out.println(integer);
		}
		
		//값을 지울 땐 역for문을 쓴다.
		//길이가 5라면 4 3 2 1 0 이렇게 for문이 돌아감
		System.out.println("몇 미만의 숫자를 지울까요?");
		int cutline = s.nextInt();
		for(int i = nums.size()-1; i>=0; i--) {
			if(cutline>nums.get(i))//get(i), i번째 값 읽음
				nums.remove(i); //remove(i), i번째를 지워버림
		}
		for (Integer integer : nums) {
			System.out.println(integer);
		}
		
		//가장 첫번째 값을 -1로 변경
		nums.set(0, -1);
		

	}

}





