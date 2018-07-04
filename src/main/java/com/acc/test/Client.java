package com.acc.test;

/**
 * Created by Administrator on 2018/6/13.
 */
public class Client {

    public static void main(String[] args){

        H1Hummer h1 = new H1Hummer();
        h1.setAlarmFlag(false);
        h1.run();
    }
}
