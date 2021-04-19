package io.github.talelin.latticy.service;

import io.github.talelin.latticy.dto.position.CreateOrUpdatePositionDTO;
import io.github.talelin.latticy.model.PositionDO;
import com.baomidou.mybatisplus.extension.service.IService;
import io.github.talelin.latticy.model.result.PositionResultDO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-02
 */
public interface PositionService extends IService<PositionDO> {

    PositionResultDO getById(Integer id);

    boolean updateState(Integer id, Integer state);

    boolean updateHits(Integer id);

    PositionDO findById(Integer id);

    boolean createPosition(CreateOrUpdatePositionDTO validator);

    boolean updatePosition(PositionDO positionDO, CreateOrUpdatePositionDTO validator);

    List<PositionResultDO> sort();
}
