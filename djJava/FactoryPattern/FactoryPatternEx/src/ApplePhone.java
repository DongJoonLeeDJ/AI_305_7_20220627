public class ApplePhone extends Phone {


    @Override
    public void complete() {
        System.out.println("apple complete");
    }

    @Override
    public void call() {
        System.out.println("ios는 녹음 안 됨");
    }
}
