package AbstractFactoryPattern;

public class ApplePhone extends Phone {
    @Override
    public void call() {
        System.out.println("ios는 녹음 안 됨");
    }

    @Override
    public void complete() {
        System.out.println("애플 폰 완성");
    }

    @Override
    public void playGame() {
        System.out.println("아이폰을 다루는 거 자체가 게임이지");
    }
}
