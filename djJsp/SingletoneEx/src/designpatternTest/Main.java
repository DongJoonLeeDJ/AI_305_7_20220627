package designpatternTest;

public class Main {
public static void main(String[] args) {
	Parent p1 = new Parent();
	Child c1 = new Child();
	Parent p2 = new Parent();
	Child c2 = new Child();
	
	System.out.println(p1.age); //1
	System.out.println(p2.age); //1
	System.out.println(c1.age); //1
	System.out.println(c2.age); //1
	
	System.out.println(Parent.count); //4
	System.out.println(Child.count); //4

}
}






