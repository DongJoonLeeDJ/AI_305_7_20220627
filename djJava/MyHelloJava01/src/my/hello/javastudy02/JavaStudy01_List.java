package my.hello.javastudy02;

import java.util.ArrayList;

public class JavaStudy01_List {
	public static void main(String[] args) {
		//배열
		//선언과 동시에 크기가 정해짐
		int[] numbers = new int[5];
		
		//ArrayList(=List라고도 부름)
		//배열과는 다르게 선언 당시엔 크기가 0
		//길이를 미리 정하지 않는다는 점에서 
		//js의 배열이랑 유사
		ArrayList<Integer> nums 
		= new ArrayList<Integer>();
		
		//값을 할당해보는 것(배열)
		numbers[0] = 10;
		numbers[1] = 30;
		//값을 읽어들이는 것(배열)
		System.out.println("첫번째값:"+numbers[0]);
		
		//값을 추가하는 것(ArrayList)
		nums.add(10); //js의 push처럼 새로운 값이 추가됨
		//js의 배열처럼 임의의 위치에 값을 추가하진 못 함
		nums.add(30);
		
		//특정 번째의 값을 수정해보기
		nums.set(0, 20); //첫번째 값을 20으로 수정
		System.out.println(nums.get(0));//첫번째값 읽음
	
		//foreach 적고 ctrl space 하면 생기는 코드
		//배열의 길이만큼 반복문을 수행하고
		//콜론(:) 앞에 있는 건 배열 안에 있는 구성요소들!
		for (Integer integer : numbers) {
				System.out.println(integer);
		}//배열의 길이가 5이고, 2,3,4번째는 기본값인 0이 있음
		
		
		//ArrayList = 값을 삭제할 수 있다.
		//배열은 값 삭제가 안 됐다.
		//삭제
		
		nums.remove(0); //첫번째 값 삭제
		nums.add(100);
		nums.add(30);
		nums.add(30);
		nums.remove((Integer)30); //값이 30인거 1개 삭제
		System.out.println("----");
		for (Integer integer : nums) {
			System.out.println(integer);
		}
	}
}




