package javastudy02;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class HelloJava02_Lotto2 {

	public static void main(String[] args) {
		ArrayList<Integer>lotto = new ArrayList<Integer>();
		Scanner s = new Scanner(System.in);
		System.out.println("�󸶳�ġ?");
		int price = s.nextInt();
		if(price%1000 != 0) {
			System.out.println("�Ž����� : " + price%1000);
			price -= (price%1000);
			System.out.println("���ݾ� : " + price);
		}
		int count = price/1000;
		if(count>5 || count<1)
		{
			System.out.println("�߸��� �ݾ�");
			return;
		}
		for(int i = 0; i<count; i++) {
			while(lotto.size() != 6) {
				int num = (int)(Math.random()*45)+1;
				lotto.remove((Integer)num); //�ߺ�'��' ����
				lotto.add(num);
			}
			Collections.sort(lotto);//����
			System.out.print(lotto.toString());
			int bns = (int)(Math.random()*45)+1;
			while(lotto.contains(bns)) { //���Կ���
				bns=(int)(Math.random()*45)+1;
			}
			System.out.println(" ���ʽ� " + bns);
			lotto.clear();//lotto �����ϱ�
		}
		

	}

}
