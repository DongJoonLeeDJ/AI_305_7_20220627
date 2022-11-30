package FactoryMethodPattern;


public class AndroidPhoneFactory implements  PhoneFactory{

    @Override
    public Phone createPhone() {
        return new AndroidPhone();
    }
}
