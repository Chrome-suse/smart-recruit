package io.github.talelin.latticy.mapper;

import io.github.talelin.latticy.model.NotifyDO;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-16
 */
public interface NotifyMapper extends BaseMapper<NotifyDO> {

    boolean update(String userName);
}
