package io.github.talelin.latticy.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import io.github.talelin.autoconfigure.exception.NotFoundException;
import io.github.talelin.latticy.mapper.CompanyMapper;
import io.github.talelin.latticy.model.CompanyDO;
import io.github.talelin.latticy.model.HrCompanyDO;
import io.github.talelin.latticy.mapper.HrCompanyMapper;
import io.github.talelin.latticy.service.HrCompanyService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-05
 */
@Service
public class HrCompanyServiceImpl extends ServiceImpl<HrCompanyMapper, HrCompanyDO> implements HrCompanyService {

    @Autowired
    private HrCompanyMapper hrCompanyMapper;

    @Autowired
    private CompanyMapper companyMapper;

    @Override
    public CompanyDO getCompany(Integer hrID) {
        // 根据hrID查询hr_company表，是否有对应的记录
        QueryWrapper<HrCompanyDO> wrapper = new QueryWrapper<>();
        wrapper.eq("hr_id", hrID);
        HrCompanyDO hrCompanyDO = hrCompanyMapper.selectOne(wrapper);
        if (hrCompanyDO == null) {
            throw new NotFoundException(60000);
        }
        // 查询公司详细信息
        CompanyDO companyDO = companyMapper.selectById(hrCompanyDO.getCompanyId());
        return companyDO;
    }

    @Override
    public boolean create(Integer hrID, Integer companyID) {
        HrCompanyDO hrCompanyDO = new HrCompanyDO();
        hrCompanyDO.setHrId(hrID);
        hrCompanyDO.setCompanyId(companyID);
        return hrCompanyMapper.insert(hrCompanyDO) > 0;
    }

    @Override
    public HrCompanyDO getByHrId(Integer hrID) {
        QueryWrapper<HrCompanyDO> wrapper = new QueryWrapper<>();
        wrapper.eq("hr_id", hrID);
        HrCompanyDO hrCompanyDO = hrCompanyMapper.selectOne(wrapper);
        return hrCompanyDO;
    }
}
