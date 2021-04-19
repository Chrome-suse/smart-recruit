package io.github.talelin.latticy.common.observer.user;

import io.github.talelin.latticy.common.observer.Observer;
import io.github.talelin.latticy.common.util.SingleUtil;
import lombok.Data;

/**
* @Author 陈灿杰
*
* 观察者子类——user1用户
*/
@Data
public class user1 extends Observer {

    /**
     * 观察者名字
     */
    public String name = "user1";

    @Override
    public void update() {
        // 根据message和name存一条记录到全局map中：messageMap
        SingleUtil.messageMap.put(name, message);
    }
}