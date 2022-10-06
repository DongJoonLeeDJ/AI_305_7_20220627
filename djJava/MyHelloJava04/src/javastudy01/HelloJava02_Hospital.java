package javastudy01;

import java.util.ArrayList;

public class HelloJava02_Hospital {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Animal> animalHospital 
		= new ArrayList<Animal>();
		
		Animal a1 = new Animal();
		Animal a2 = new Dog();//Dog a2 = new Dog(); <-�̰ŵ� ��
		Cat a3 = new Cat();
		
		if(a2 instanceof Dog)
			((Dog) a2).setHairColor("���");
		
		a3.setEyeColor("ȣ�ڻ�");
		animalHospital.add(a1);
		animalHospital.add(a2);
		animalHospital.add(a3);
		
		for (Animal animal : animalHospital) {
			animal.Sleep();
			if(animal instanceof Dog)
				((Dog) animal).bark();
			else if(animal instanceof Cat)
				((Cat) animal).meow();
			System.out.println("--------------");
		}
		
		
		
		
	}

}








