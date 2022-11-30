package AbstractFactoryPattern;


public class ApplePhoneFactory implements PhoneFactory {

    @Override
    public Phone createPhone() {
        return new ApplePhone();
    }

    @Override
    public OS createOS() {
        return new IOS();
    }
}
