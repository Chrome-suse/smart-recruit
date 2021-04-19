package io.github.talelin.latticy.mapper;

import io.github.talelin.latticy.common.mybatis.Page;
import io.github.talelin.latticy.model.ApplicationDO;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import io.github.talelin.latticy.model.result.ApplicationResultDO;
import com.baomidou.mybatisplus.core.metadata.IPage;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-04
 */
public interface ApplicationMapper extends BaseMapper<ApplicationDO> {

    IPage<ApplicationResultDO> getByHrId(Page<ApplicationResultDO> page, Integer hrID, Integer state);

    boolean updateState(Integer id, Integer state);

    IPage<ApplicationResultDO> sortByGrade(Page<ApplicationResultDO> page, Integer hrID);

    IPage<ApplicationResultDO> getByUserId(Page<ApplicationResultDO> page, Integer userId, Integer state);
}
