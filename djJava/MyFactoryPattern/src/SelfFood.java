public class SelfFood extends Food{
    @Override
    public void prepared() {
        System.out.println("자취생은 서럽다. 음식준비 힘들어");
    }

    @Override
    public void tryEat() {
        System.out.println("맛도 없다.");
    }
}
