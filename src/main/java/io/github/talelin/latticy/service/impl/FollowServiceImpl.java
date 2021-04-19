package io.github.talelin.latticy.service.impl;

import io.github.talelin.autoconfigure.exception.NotFoundException;
import io.github.talelin.latticy.dto.follow.CreateFollowDTO;
import io.github.talelin.latticy.model.CompanyDO;
import io.github.talelin.latticy.model.FollowDO;
import io.github.talelin.latticy.mapper.FollowMapper;
import io.github.talelin.latticy.service.FollowService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-03-31
 */
@Service
public class FollowServiceImpl extends ServiceImpl<FollowMapper, FollowDO> implements FollowService {
    @Autowired
    private FollowMapper followMapper;

    @Override
    public boolean addFollow(CreateFollowDTO validator) {
        FollowDO followDO = new FollowDO();
        followDO.setCompanyId(validator.getCompanyId());
        followDO.setUserId(validator.getUserId());
        return followMapper.insert(followDO) > 0;
    }

    @Override
    public FollowDO getById(Integer id) {
        FollowDO follow = followMapper.selectById(id);
        return follow;
    }

    @Override
    public boolean deleteById(Integer id) {
        return followMapper.deleteById(id) > 0;
    }

    @Override
    public List<CompanyDO> getAllByUserId(Integer userId) {
        return followMapper.getByUserId(userId);
    }

    @Override
    public boolean cancelFollow(Integer userId, Integer companyId) {
        // 根据用户id和公司id查询关注信息
        FollowDO follow = followMapper.getByUserIdAndCompanyId(userId, companyId);
        if (follow == null) {
            throw new NotFoundException(23000);
        }
        // 删除该关注
        return followMapper.deleteById(follow.getId()) > 0;
    }

    @Override
    public boolean create(FollowDO followDO) {
        return followMapper.insert(followDO) > 0;
    }
}
