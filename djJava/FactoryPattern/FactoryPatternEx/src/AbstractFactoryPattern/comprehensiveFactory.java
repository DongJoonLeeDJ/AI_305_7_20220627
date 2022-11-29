package AbstractFactoryPattern;

//초대형 공장을 짓는다.
//안드로이드 공장과 아이폰 공장이 이 안에 들어감

//혹은 여기선 공장추가했지만
//반대로 더 세분화된다고도 볼 수 있다.
//https://cjw-awdsd.tistory.com/54

//Phone의 부품들 하나하나에 대해서도 인터페이스를 걸어서 세분화하는 것이다.
//즉 기존 공장은 냅두고 기존 클래스들을 세분화하는 것이다.
//https://jusungpark.tistory.com/14
public interface comprehensiveFactory {
    PhoneFactory requestPhone(String company);
}
