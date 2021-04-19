package io.github.talelin.latticy.mapper;

import io.github.talelin.latticy.model.FavorDO;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.github.talelin.latticy.model.PositionDO;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-02
 */
public interface FavorMapper extends BaseMapper<FavorDO> {
    List<PositionDO> getByUserId(Integer userId);

    FavorDO getByUserIdAndFavorId(Integer userId, Integer positionId);
}
