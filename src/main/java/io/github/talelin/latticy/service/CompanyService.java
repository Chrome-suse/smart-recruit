package io.github.talelin.latticy.service;

import io.github.talelin.latticy.dto.company.CreateOrUpdateCompanyDTO;
import io.github.talelin.latticy.model.CompanyDO;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-01
 */
public interface CompanyService extends IService<CompanyDO> {

    boolean updateCompany(CompanyDO company, CreateOrUpdateCompanyDTO validator);

    boolean updateState(Integer id, Integer state);

    boolean createCompany(CreateOrUpdateCompanyDTO validator);

    CompanyDO getByName(String name);

    List<CompanyDO> findHotCompany();
}
