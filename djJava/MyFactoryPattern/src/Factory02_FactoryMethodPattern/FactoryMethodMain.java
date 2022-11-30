package Factory02_FactoryMethodPattern;

public class FactoryMethodMain {
    public static void main(String[] args) {
        FoodStore store1 = new BaekBoy(); //백보이 창업
        Food f1 = store1.orderFood(); //백보이에서 음식 만듦
        f1.tryEat();//그 음식 먹어봄

        FoodStore store2 = new BaekDabang();
        Food f2 = store2.orderFood();
        f2.tryEat();

        //팩토리 메소드 패턴
        //심플팩토리랑은 다르게 type값을 입력받지 않습니다.
        //Food랑 FoodStore를 상속한 클래스들만 만들면
        //코드 수정 없이 바로 새로운 음식점과
        //음식을 만들 수 있다.

        //객체지향의 가장 중요한 특징을 반영
        //OCP(객체 폐쇄의 특징 : 확장은 가능, 수정은 x)
        
    }
}
