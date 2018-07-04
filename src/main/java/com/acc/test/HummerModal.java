package com.acc.test;

/**
 * Created by Administrator on 2018/6/13.
 */
public abstract class HummerModal {

    protected abstract void start();

    protected abstract void alarm();

    final public void run(){
        if(this.isAlarm()){
            this.alarm();
        }
        this.start();
    }

    protected boolean isAlarm(){
        return true;
    }
}
