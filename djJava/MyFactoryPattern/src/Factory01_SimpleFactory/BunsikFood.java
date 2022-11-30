package Factory01_SimpleFactory;

public class BunsikFood extends Food{
    @Override
    public void prepared() {
        System.out.println("학교 앞 인심좋은 분식집 사장님 음식 준비 중");
    }

    @Override
    public void tryEat() {
        System.out.println("이쑤시개로 찍어먹는 떡볶이~");
    }
}
