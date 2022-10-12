package javastudy04;

import java.util.*;

import javastudy03.KBStudent;
public class HelloJava01_Set_Map {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//java에는 크게 List, Set, Map 3가지 있다.
		//List도 ArrayList말고도 다양한 종류가 있다.
		List<Integer> ex1 = new ArrayList<Integer>();
		List<Integer> ex2 = new LinkedList<Integer>();
		List<Integer> ex3 = new Stack<Integer>();
		List<Integer> ex4 = new Vector<Integer>();
		//Queue<Integer> ex5 = new LinkedList<Integer>();
		
		//Map, Set
		//Map은 면접 문제에 나옴
		//C#의 dictionary, python dict랑 같은 것
		//Map에서 대표적인 것은 HashMap
		Map<Integer, String> students 
			= new HashMap<Integer, String>();
		students.put(1, "안서준");
		students.put(2, "이동준");
		students.put(1, "박지호"); //키값이 겹치므로 기본값은 없어짐
		students.put(3, "박지호"); //1번 박지호랑은 다른 인물로 간주함
		for(int key : students.keySet()) {
			System.out.println(key);
			System.out.println(students.get(key));
		}
		//hash : 각자를 구분하는 고유값(혹은 고유 코드)
		//전화번호나 주민번호같은 것들
		//요약
		//Map : 키와 값으로 값을 저장 관리하고, 키값이 중복되면
		//기존 값 삭제됨
		
		//Set
		//중복을 허용하지 않는 리스트, 순서가 없음. 먼저 들어간 게 나중에
		//출력되기도 함
		Set<String> workers = new HashSet<String>();
		workers.add("김진규");
		workers.add("김보규");
		workers.add("김진규");
		workers.add("이동준");
		workers.add("이동준");
		System.out.println("--set Test ---");
		for (String string : workers) {
			System.out.println(string);
		}
		
		javastudy03.KBStudent k1 
			= new KBStudent("이현민", "남성", 30, 3);
		javastudy03.KBStudent k2 
		= new KBStudent("이현민", "남성", 30, 3);
		System.out.println(k1.equals(k2)); //번호를 기준으로 비교하면 같음
		Set<KBStudent> kbstudents = new HashSet<KBStudent>();
		kbstudents.add(k1); //중복된 값을 집어넣고 있다....
		kbstudents.add(k2);
		for (KBStudent kbStudent : kbstudents) {
			System.out.println(kbStudent);
		}
		
		

	}
	
	

}
