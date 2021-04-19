package io.github.talelin.latticy.service;

import io.github.talelin.latticy.model.CompanyDO;
import io.github.talelin.latticy.model.HrCompanyDO;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-05
 */
public interface HrCompanyService extends IService<HrCompanyDO> {

    CompanyDO getCompany(Integer hrID);

    boolean create(Integer hrID, Integer companyID);

    HrCompanyDO getByHrId(Integer hrID);
}
