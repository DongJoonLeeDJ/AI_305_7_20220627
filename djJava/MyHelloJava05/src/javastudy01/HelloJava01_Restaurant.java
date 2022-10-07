package javastudy01;

import java.util.ArrayList;
import java.util.Scanner;

public class HelloJava01_Restaurant {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Food f = new Food("비빔밥");
		Sushi s = new Sushi("연어초밥",10000,"녹색와사비");
		//e는 Food 대신 Emokase라고 해도
		//Food타입 ArrayList나 배열에 들어감
		//이걸 굳이 쓴 이유는 다형성 보여줄려고...
		Food e = new Emokase("곱창전골", 20000);
			
		
		//Food()나 Sushi()나 Emokase() 이렇게 비어있는
		//생성자를 못 만드는 이유는 Food에 매개변수가 없는 생성자는
		//없기 때문이다.
		
		ArrayList<Food> foods = new ArrayList<Food>();
		f.setPrice(1000);
		foods.add(f);
		foods.add(s);
		foods.add(e);
		
		//Scanner도 보시다시피 클래스
		//생성자가 있으며 매개변수도 있다.
		//System 클래스 안에 있는 in은 클래스 변수
		Scanner scan = new Scanner(System.in);
		while(true) {
			System.out.println("어떤 음식 추가할래?");
			String name = scan.nextLine();
			Food temp;
			if(name.equals("스시") || name.equals("Sushi")) {
				System.out.println("얼마야?");
				int price = scan.nextInt();
				scan.nextLine(); //hasNextLine 아님
				System.out.println("무슨 초밥?");
				String Sushiname = scan.nextLine();
				System.out.println("무슨 와사비써?");
				String wasabi = scan.nextLine();
				temp = new Sushi(Sushiname, price, wasabi);
				foods.add(temp);
			} else if(name.equals("이모카세") || name.equals("Emokase")) {
				System.out.println("얼마야?");
				int price = scan.nextInt();
				scan.nextLine(); //hasNextLine 아님
				System.out.println("메뉴명이 뭐야?");
				String menu = scan.nextLine();
				temp = new Emokase(menu, price);
				foods.add(temp);
			} else {
				if(name.equals("exit")) {
					System.out.println("추가 종료");
					break;
				} else {
					System.out.println("얼마야?");
					int price = scan.nextInt();
					scan.nextLine(); //hasNextLine 아님
					System.out.println("메뉴명이 뭐야?");
					String menu = scan.nextLine();
					temp = new Food(menu, price);
					foods.add(temp);
				}
			}
				
		}
		
		for (Food food : foods) {
			food.eat();
			if(food instanceof Emokase)
			{
				((Emokase) food).sayEmo();
				//System.out.println("메뉴뭔데?");
				//String menu = scan.nextLine();
				//System.out.println
				//(((Emokase) food).choiceMenu(menu));
			}
		}
		
	}

}






