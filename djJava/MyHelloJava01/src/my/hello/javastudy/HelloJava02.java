package my.hello.javastudy;

import java.util.Arrays;
import java.util.Scanner;

public class HelloJava02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//1. ��÷ ��ȣ�� �� �� �̾Ƴ��� �Է¹ޱ�
		Scanner s = new Scanner(System.in);
		int count = s.nextInt();
		if(count<1 || count >5)
		{
			System.out.println(count+"Ƚ���� �߸��� ��!");
			return;//main�Լ��� ���������� ��
		}
		//���� �õ��� �ζ� Ƚ��
		for(int i = 0; i<count; i++) {
			
			int[] lotto = new int[6];

			//2. ��÷ ��ȣ�� �̾Ƴ��� �ȴ�.
			for(int j = 0; j<lotto.length; j++) {
				int num = (int)(Math.random()*45)+1;
				boolean isDuplicate = 
				Arrays.asList(lotto).contains(num);
				if(isDuplicate)
				{
					j--;
					continue;
				}
				lotto[j]=num;
			}
			int bns = (int)(Math.random()*45)+1;
			while(Arrays.asList(lotto).contains(bns))
			{
				bns = (int)(Math.random()*45)+1;
			}
			Arrays.sort(lotto);
			System.out.print((i+1)+"��° ��ȣ ");
			System.out.print(Arrays.toString(lotto));
			System.out.println(" ���ʽ� ��ȣ : " + bns);
			
		}
		
	}

}




