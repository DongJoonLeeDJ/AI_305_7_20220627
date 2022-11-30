public class MyHomeFood extends Food{
    @Override
    public void prepared() {
        System.out.println("엄마손 아빠손 음식");
    }

    @Override
    public void tryEat() {
        System.out.println("맛없어도 맛있다 하기");
    }
}
