package io.github.talelin.latticy.common.observer.company;

import io.github.talelin.latticy.common.observer.Observer;
import io.github.talelin.latticy.common.observer.Subject;
import lombok.Data;

/**
* @Author 陈灿杰
*
* 被观察者子类——深信服公司
*/
@Data
public class Sangfor extends Subject {

    /**
    * 公司名
    */
    private String name = "深信服";

    /**
    * 公司外文名
    */
    private static String foreignName ="Sangfor";

    @Override
    public void notifyObservers() {
        for (Observer o : observers) {
            o.setMessage(getName(), getState(), getPositionName());
            o.update();
        }
    }
}