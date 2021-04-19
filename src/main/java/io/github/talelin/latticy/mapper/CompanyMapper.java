package io.github.talelin.latticy.mapper;

import io.github.talelin.latticy.model.CompanyDO;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-01
 */
public interface CompanyMapper extends BaseMapper<CompanyDO> {

    boolean updateState(Integer id, Integer state);
}
