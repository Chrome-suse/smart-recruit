package io.github.talelin.latticy.service;

import io.github.talelin.latticy.model.ApplicationDO;
import com.baomidou.mybatisplus.extension.service.IService;
import io.github.talelin.latticy.model.result.ApplicationResultDO;
import io.github.talelin.latticy.vo.PageResponseVO;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-04
 */
public interface ApplicationService extends IService<ApplicationDO> {

    boolean create(ApplicationDO applicationDO);

    PageResponseVO<ApplicationResultDO> getByHrId(Integer count, Integer page, Integer hrID, Integer state);

    boolean updateState(Integer id, Integer state);

    PageResponseVO<ApplicationResultDO> sort(Integer count, Integer page, Integer hrID);

    PageResponseVO<ApplicationResultDO> getByUserId(Integer count, Integer page, Integer userId, Integer state);
}
