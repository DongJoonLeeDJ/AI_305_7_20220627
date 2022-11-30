package Factory01_SimpleFactory;

public class GisaFood extends Food{

    @Override
    public void prepared() {
        System.out.println("기사님들만 아는 찐맛집 준비");
    }

    @Override
    public void tryEat() {
        System.out.println("맛있게 드시는 기사님들");
    }
}
