package com.acc.test;

/**
 * Created by Administrator on 2018/6/13.
 */
public class H1Hummer extends HummerModal{

    private boolean alarmFlag = true;

    @Override
    protected void start() {
        System.out.println("...h1 start");
    }

    @Override
    protected void alarm() {
        System.out.println("...h1 alarm");
    }

    protected boolean isAlarm(){
        return this.alarmFlag;
    }

    public void setAlarmFlag(boolean alarmFlag){
        this.alarmFlag = alarmFlag;
    }
}
