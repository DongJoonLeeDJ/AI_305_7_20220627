package AbstractFactoryPattern;


public class AndroidPhoneFactory implements PhoneFactory {

    @Override
    public Phone createPhone() {
        return new AndroidPhone();
    }

    @Override
    public OS createOS() {
        return new AOS();
    }
}
