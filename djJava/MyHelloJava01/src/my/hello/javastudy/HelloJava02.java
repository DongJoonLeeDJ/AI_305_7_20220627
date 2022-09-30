package my.hello.javastudy;

import java.util.Arrays;
import java.util.Scanner;

public class HelloJava02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//1. 당첨 번호를 몇 번 뽑아낼지 입력받기
		Scanner s = new Scanner(System.in);
		int count = s.nextInt();
		if(count<1 || count >5)
		{
			System.out.println(count+"횟수는 잘못된 값!");
			return;//main함수를 끝내버리는 것
		}
		//내가 시도할 로또 횟수
		for(int i = 0; i<count; i++) {
			
			int[] lotto = new int[6];

			//2. 당첨 번호를 뽑아내면 된다.
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
			System.out.print((i+1)+"번째 번호 ");
			System.out.print(Arrays.toString(lotto));
			System.out.println(" 보너스 번호 : " + bns);
			
		}
		
	}

}




