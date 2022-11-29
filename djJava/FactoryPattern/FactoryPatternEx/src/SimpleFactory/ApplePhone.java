package SimpleFactory;

public class ApplePhone extends Phone {
    @Override
    public void call() {
        System.out.println("ios는 녹음 안 됨");
    }

    @Override
    public void complete() {
        System.out.println("애플 폰 완성");
    }
}
