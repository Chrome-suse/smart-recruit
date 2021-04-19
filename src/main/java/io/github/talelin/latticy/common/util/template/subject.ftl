package ${classPath};

import io.github.talelin.latticy.common.observer.Observer;
import io.github.talelin.latticy.common.observer.Subject;
import lombok.Data;

/**
* @Author 陈灿杰
*
* 被观察者子类——${name}公司
*/
@Data
public class ${className} extends Subject {

    /**
    * 公司名
    */
    private String name = "${name}";

    /**
    * 公司外文名
    */
    private static String foreignName ="${className}";

    @Override
    public void notifyObservers() {
        for (Observer o : observers) {
            o.setMessage(getName(), getState(), getPositionName());
            o.update();
        }
    }
}