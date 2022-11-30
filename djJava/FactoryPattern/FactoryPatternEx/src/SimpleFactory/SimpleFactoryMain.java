package SimpleFactory;

public class SimpleFactoryMain {
    public static void main(String[] args) {
        //s 공장에서 폰을 만든다.
        //인스턴스 만드는 클래스가 따로 있음
        //이게 팩토리 패턴의 가장 기본 정의
        
        //앞선 코드에선 Main의 메소드가 인스턴스를 만들었으나 여기선 또 다른 서브 클래스가 인스턴스를 생성
        //근데 결과적으로 새로운 클래스가 생기면 인스턴스 만드는 클래스(=공장) 변경해야 함
        SimplePhoneFactory s = new SimplePhoneFactory();
        Phone phone = s.orderPhone("android");
        phone.call();
        Phone phone2 = s.orderPhone("apple");
        phone2.call();
    }
}
