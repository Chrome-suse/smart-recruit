package io.github.talelin.latticy.common.observer.company;

import io.github.talelin.latticy.common.observer.Observer;
import io.github.talelin.latticy.common.observer.Subject;
import lombok.Data;

/**
* @Author 陈灿杰
*
* 被观察者子类——网易公司
*/
@Data
public class NetEase extends Subject {

    /**
    * 公司名
    */
    private String name = "网易";

    /**
    * 公司外文名
    */
    private static String foreignName ="NetEase";

    @Override
    public void notifyObservers() {
        for (Observer o : observers) {
            o.setMessage(getName(), getState(), getPositionName());
            o.update();
        }
    }
}