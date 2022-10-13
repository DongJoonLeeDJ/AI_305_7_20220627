package com.myjsp.myjava;

public class Student {
	private String name;
	private int age;
	private int number;
	public Student(String name, int age, int number) {
		this.name = name;
		this.age = age;
		this.number = number;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "이름:"+name+", 나이:"+age+", 번호:"+number;
	}
}
