package javastudy02;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class HelloJava01_Lotto1 {

	public static void main(String[] args) {
		// ArrayList 이용한 로또
		// 대신 배열 스타일로 코드 짜보기
		Scanner s = new Scanner(System.in);
		System.out.println("얼마너치 살건가요?");
		int count = s.nextInt()/1000; //5000 입력하면 count=5
		//만약 4100원 이런 금액이라면 어떻게 할까요?
		//거스름돈도 주는 센스가 있어야 겠죠?
		//어떻게 할지는 각자 생각해보세요.
		if(count>5 || count<1 )
		{
			System.out.println("금액이 잘못되었습니다.");
			return;
		}
		for(int i = 0; i<count;i++)
		{
			ArrayList<Integer> lotto = new ArrayList<Integer>();
			for(int j = 0; j<6; j++) {
				int num = (int)(Math.random()*45)+1;
				boolean isDuplicate = false;
				for(int k =0; k<j; k++) {
					if(lotto.get(k)==num) {
						isDuplicate=true;
						j--;
						break;
					}
				}
				if(!isDuplicate)
					lotto.add(num);
			}
			//System.out.print(lotto.toString());
			int bns = (int)(Math.random()*45)+1;
			for(int j = 0; j<lotto.size(); j++) {
				if(bns==lotto.get(j))
				{
					bns= (int)(Math.random()*45)+1;
					j=-1;
				}
			}
			Collections.sort(lotto); //정렬
			System.out.print(lotto.toString());
			System.out.println(" 보너스 " + bns);
			//참고로 lotto.clear() 안 해도 됨
			//왜냐면 위쪽에 ArrayList를 새로 선언하기 때문
			//lotto.clear(); //lotto 안에 있는 값을 전부 삭제(=Remove)
		}

	}

}








