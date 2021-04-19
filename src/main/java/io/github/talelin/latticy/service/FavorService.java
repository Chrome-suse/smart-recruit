package io.github.talelin.latticy.service;

import io.github.talelin.latticy.model.FavorDO;
import com.baomidou.mybatisplus.extension.service.IService;
import io.github.talelin.latticy.model.PositionDO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-02
 */
public interface FavorService extends IService<FavorDO> {
    List<PositionDO> getAllByUserId(Integer userId);

    boolean cancelFavor(Integer userId, Integer positionId);

    boolean create(FavorDO favorDO);
}
