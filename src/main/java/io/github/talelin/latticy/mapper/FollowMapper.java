package io.github.talelin.latticy.mapper;

import io.github.talelin.latticy.model.CompanyDO;
import io.github.talelin.latticy.model.FollowDO;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-03-31
 */
public interface FollowMapper extends BaseMapper<FollowDO> {

    List<CompanyDO> getByUserId(Integer userId);

    FollowDO getByUserIdAndCompanyId(Integer userId, Integer companyId);
}
