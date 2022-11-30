package FactoryMethodPattern;


public class ApplePhoneFactory implements  PhoneFactory{

    @Override
    public Phone createPhone() {
        return new ApplePhone();
    }
}
