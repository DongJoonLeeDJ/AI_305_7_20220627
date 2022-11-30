package AbstractFactoryPattern;

public class WindowPhone extends Phone {
    @Override
    public void call() {
        System.out.println("전화는 되죠 윈도?");
    }

    @Override
    public void complete() {
        System.out.println("요새 있긴 한가요 윈도");
    }

    @Override
    public void playGame() {
        System.out.println("윈도우 폰 하면 포카지");
    }
}
