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
				
				boolean isDuplicate = false;
				//contain, indexOf�� ��ü�����
				for(int k = 0; k<j; k++)
				{
					if(lotto[k]==num)
					{
						isDuplicate = true;
						j--;
						break;
					}
				}
				
				//isDuplicate�� false�� �Ǹ� ���� ����ǥ��
				//���ؼ� true�� ��
				//���� isDuplicate�� true�� �Ǹ�
				//����ǥ�� ���ؼ� false�� ��
				//! : not ����
				if(!isDuplicate)
					lotto[j]=num;
			}
			int bns = (int)(Math.random()*45)+1;
			
			for(int j = 0; j<lotto.length; j++)
			{
				if(bns==lotto[j]) {
					bns = (int)(Math.random()*45)+1;
					j = -1;
				}
			}
			Arrays.sort(lotto);
			System.out.print((i+1)+"��° ��ȣ ");
			System.out.print(Arrays.toString(lotto));
			System.out.println(" ���ʽ� ��ȣ : " + bns);
			
		}
		
	}

}




