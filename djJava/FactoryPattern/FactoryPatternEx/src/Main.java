


public class Main {
    static Phone orderPhone(String type) {

        Phone phone = null;



        if(type.equals("android")) phone = new AndroidPhone();

        else if(type.equals("apple")) phone = new ApplePhone();




        phone.complete();

        phone.call();

        return phone;

    }

    public static void main(String[] args) {
        
        //팩토리 패턴 이전에는 인스턴스를 메인에서 직접 만들거나
        //인스턴스 만들어주는 메소드가 있었다.
        //이 경우 추가해야 할 class가 늘어나면(폰 종류가 늘어나면)
        //그에 따라서 인스턴스 만들어주는 메소드도 코드를 변경해야 한다.
        //여기선 else if 경우의 수가 추가 됨
        Phone p = orderPhone("android");
       // p.setName("갤럭시 s");
        Phone p2 = orderPhone("apple");
       // p2.setName("iphone");
    }
}