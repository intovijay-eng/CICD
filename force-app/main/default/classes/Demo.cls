public with sharing class Demo {
    public Demo() {
        System.debug('Welcome to VS Code');
        System.debug('Welcome to VS Code added few more chages to demo pull request');
    }

    public static void demoMethod(){
        System.debug('Welcome to VS code changes');
        demoMethod2();
    }

    public static void demoMethod2(){
        System.debug('Welcome to VS code changes');
    }
}