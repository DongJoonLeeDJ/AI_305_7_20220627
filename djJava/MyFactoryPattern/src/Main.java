public class Main {

    //Main에서 객체(=인스턴스) 생성하는 것보다
    //조금 더 발전된 방식
    //객체를 함수를 통해서 만든다.
    //type만 집어넣어 주면 쉽게 객체 생성 가능
    //그러나 새로운 class 생기면
    //이 코드도 반드시 수정해야 함
    public static Food order(String type)
    {
        switch (type)
        {
            case "우리집":
                return new MyHomeFood();
            case "자취집":
                return new SelfFood();
            default:
                return null;
        }
    }


    public static void main(String[] args) {
        //Main 에서 바로 생성하는 방식
        Food f1 = new MyHomeFood();
        Food f2 = new SelfFood();
        f1.prepared();
        f1.tryEat();
        f2.prepared();
        f2.tryEat();

        //함수 이용한 것
        Food f3 = order("우리집");
        Food f4 = order("자취집");
        f3.prepared();
        f3.tryEat();
        f4.prepared();
        f4.tryEat();

    }
}