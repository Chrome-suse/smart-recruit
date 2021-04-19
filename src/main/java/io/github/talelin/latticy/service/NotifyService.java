package io.github.talelin.latticy.service;

import io.github.talelin.latticy.model.NotifyDO;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-16
 */
public interface NotifyService extends IService<NotifyDO> {

    boolean create(NotifyDO notifyDO);

    List<NotifyDO> get(String userName, String isRead);

    List<NotifyDO> getAll(String userName);

    boolean update(String userName);
}
