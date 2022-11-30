package FactoryMethodPattern;

public class FactoryMethodMain {

    public static void main(String[] args) {

        //서브 class에서 인스턴스를 생성하나
        //class 별로 해당 class에 맞는 인스턴스를 생성하는 class(=공장)이 다름.

        //즉 기존 함수에서 인스턴스 만드는 방식은 가내수공업
        //SimpleFactory는 중소기업
        //팩토리메소드패턴은 프렌차이즈가 된다.
        //아이폰 공장에선 아이폰만 만들고 안드로이드 공장에선 안드로이드만 만든다.
        //거기다가 여긴 type을 입력받는 곳이 없다!
        //따라서 뭐 추가된다고 case문이나 if문에 코드 추가 안 해도 된다.
        //수정은 하지 않으면서 확장성은 열린 것이다.
        /*
        *  클래스 만들 때 확장은 가능하게 하되, 한번 만들면 추후에 수정할 필요 없게 만들라는 원칙인 ****OCP (개방 폐쇄의 원칙 : Open Close Principle)를 따르게 된다.
        * */

        
        //오른쪽 부분을 주의해줘야 함
        PhoneFactory iPhoneFactory = new ApplePhoneFactory();
        Phone iphone = iPhoneFactory.orderPhone();
        iphone.call();
        //iphone.setName("i love jobs");
        //System.out.println(iphone.getName());


        PhoneFactory androidPhoneFactory = new AndroidPhoneFactory();
        Phone phone2 = androidPhoneFactory.orderPhone();
        phone2.call();

    }
}
