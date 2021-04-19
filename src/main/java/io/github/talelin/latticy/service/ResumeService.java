package io.github.talelin.latticy.service;

import io.github.talelin.latticy.dto.resume.CreateOrUpdateResumeDTO;
import io.github.talelin.latticy.model.ResumeDO;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-03-14
 */
public interface ResumeService extends IService<ResumeDO> {

    ResumeDO getByUserId(Integer userId);

    boolean createResume(CreateOrUpdateResumeDTO validator);

    boolean updateResume(ResumeDO resumeDO, CreateOrUpdateResumeDTO validator);
}
