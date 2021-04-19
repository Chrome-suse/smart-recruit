package io.github.talelin.latticy.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import io.github.talelin.latticy.common.mybatis.Page;
import io.github.talelin.latticy.common.util.PageUtil;
import io.github.talelin.latticy.model.ApplicationDO;
import io.github.talelin.latticy.mapper.ApplicationMapper;
import io.github.talelin.latticy.model.result.ApplicationResultDO;
import io.github.talelin.latticy.service.ApplicationService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.github.talelin.latticy.vo.PageResponseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-04
 */
@Service
public class ApplicationServiceImpl extends ServiceImpl<ApplicationMapper, ApplicationDO> implements ApplicationService {

    @Autowired
    private ApplicationMapper applicationMapper;

    @Override
    public boolean create(ApplicationDO applicationDO) {
        return applicationMapper.insert(applicationDO) > 0;
    }

    @Override
    public PageResponseVO<ApplicationResultDO> getByHrId(Integer count, Integer page, Integer hrID, Integer state) {
        Page<ApplicationResultDO> pager = new Page<>(page, count);
        IPage<ApplicationResultDO> paging = applicationMapper.getByHrId(pager, hrID, state);
        return PageUtil.build(paging);
    }

    @Override
    public boolean updateState(Integer id, Integer state) {
        return applicationMapper.updateState(id, state);
    }

    @Override
    public PageResponseVO<ApplicationResultDO> sort(Integer count, Integer page, Integer hrID) {
        Page<ApplicationResultDO> pager = new Page<>(page, count);
        IPage<ApplicationResultDO> paging = applicationMapper.sortByGrade(pager, hrID);
        return PageUtil.build(paging);
    }

    @Override
    public PageResponseVO<ApplicationResultDO> getByUserId(Integer count, Integer page, Integer userId, Integer state) {
        Page<ApplicationResultDO> pager = new Page<>(page, count);
        IPage<ApplicationResultDO> paging = applicationMapper.getByUserId(pager, userId, state);
        return PageUtil.build(paging);
    }

}
