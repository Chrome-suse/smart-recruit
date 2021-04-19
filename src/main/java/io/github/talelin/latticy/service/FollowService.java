package io.github.talelin.latticy.service;

import io.github.talelin.latticy.dto.follow.CreateFollowDTO;
import io.github.talelin.latticy.model.CompanyDO;
import io.github.talelin.latticy.model.FollowDO;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-03-31
 */
public interface FollowService extends IService<FollowDO> {
    boolean addFollow(CreateFollowDTO validator);

    FollowDO getById(Integer id);

    boolean deleteById(Integer id);

    List<CompanyDO> getAllByUserId(Integer userId);

    boolean cancelFollow(Integer userId, Integer companyId);

    boolean create(FollowDO followDO);
}
