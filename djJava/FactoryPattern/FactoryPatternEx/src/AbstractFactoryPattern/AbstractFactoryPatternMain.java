package AbstractFactoryPattern;
//추상팩토리패턴
//팩토리들 역시 추상화시키는 것이다.
//메소드 팩토리 패턴은 제품만드는 부분을 추상화했지만
//이젠 제품 만드는


//초대형 공장을 만들어서 하나에서 관리함

//심플 팩토리랑 마찬가지로 코드를 좀 고치긴 해야 한다.


//심플팩토리, 메소드팩토리랑 다른 점

//심플팩토리랑 다른 점
//심플팩토리는 하나의 공장(=class)에서 여러 폰(=instance)을 만든다.
//여기선 여러 개의 공장에서 각자에 해당하는 폰을 만들며, 또한 이 공장들 각각을 만드는 공장이 또 있다.

//메소드팩토리랑도 이 점이 다르다.
//메소드팩토리는 제품 종류별로 공장 만드는 게 따로 있었지만 여기선 공장을 만드는 클래스가 있어서
// 공장 생성 역시 하나의 class로 관리해준다.
/*
*  추상 팩토리 패턴의 장점은 다음과 같다.

구체적인 클래스를 사용자로부터 분리할 수 있다.
→ 사용자가 사용할 때는 정의된 인터페이스에 정의된 추상 메소드를 사용만 하면 된다.
->이건 메소드팩토리패턴도 그렇다.
*
제품군을 쉽게 대체할 수 있다.
→ 내가 만약 apple대신 블랙베리 폰을 생성하고 싶다면 BlackBerry를 구현후 매개변수를 apple에서
* BlackBerryFactory로 변경만 해주면 된다.
단점은 다음과 같다.

새로운 종류의 제품을 제공하기 어렵다
→ 만약 PhoneFactory에 createBattery()라는 추상 메소드가 추가된다면 PhoneFactory의 모든 서브 구현체를 다시 수정해야한다.
* 하지만 이 것도 어떤 면에선 장점이다. 일괄적으로 메소드들을 추가해주니 누락을 방지할 수 있다.
* */

public class AbstractFactoryPatternMain {
    public static void main(String[] args) {
        comprehensiveFactory cFactory = new megaPhoneFactory();
        //얘도 오른쪽을 주의해줘야 함
        //공장만드는 걸 하나의 class에서 관리함
        PhoneFactory iphoneFactory= cFactory.requestPhone("apple");   //아이폰을 산다.
        Phone iphone = iphoneFactory.orderPhone();
        iphone.call();
        iphone.playGame();

        //공장 만들고, 폰 만들고나서 매개변수만 바꿔주면 된다.
        //그외에건 전혀 안 바뀜
        PhoneFactory androidPhoneFactory = cFactory.requestPhone("anroid");   //안드로이드폰을 산다.
        Phone androidPhone = androidPhoneFactory.orderPhone();
        androidPhone.call();
        androidPhone.playGame();

        PhoneFactory wPhoneFactory = cFactory.requestPhone("window");
        Phone wPhone = wPhoneFactory.orderPhone();
        wPhone.call();
        wPhone.playGame();

    }
}
