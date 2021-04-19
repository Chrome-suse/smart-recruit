package io.github.talelin.latticy.mapper;

import io.github.talelin.latticy.model.PositionDO;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.github.talelin.latticy.model.result.PositionResultDO;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-02
 */
public interface PositionMapper extends BaseMapper<PositionDO> {

    PositionResultDO getById(Integer id);

    boolean updateState(Integer id, Integer state);

    boolean updateHits(Integer id);

    List<PositionResultDO> sortByHits();
}
