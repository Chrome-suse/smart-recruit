package io.github.talelin.latticy.service.impl;

import io.github.talelin.latticy.dto.resume.CreateOrUpdateResumeDTO;
import io.github.talelin.latticy.model.ResumeDO;
import io.github.talelin.latticy.mapper.ResumeMapper;
import io.github.talelin.latticy.service.ResumeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-03-14
 */
@Service
public class ResumeServiceImpl extends ServiceImpl<ResumeMapper, ResumeDO> implements ResumeService {

    @Autowired
    private ResumeMapper resumeMapper;

    @Override
    public ResumeDO getByUserId(Integer userId) {
        ResumeDO resume = resumeMapper.getByUserId(userId);
        return resume;
    }

    @Override
    public boolean createResume(CreateOrUpdateResumeDTO validator) {
        ResumeDO resumeDO = new ResumeDO();
        resumeDO.setAbility(validator.getAbility());
        resumeDO.setWorkExperience(validator.getWorkExperience());
        resumeDO.setProjectExperience(validator.getProjectExperience());
        resumeDO.setEducationExperience(validator.getEducationExperience());
        resumeDO.setPersonalSummary(validator.getPersonalSummary());
        resumeDO.setUserId(validator.getUserId());
        // 简历评分，完成一个模块20分，总分为100分
        if (validator.getWorkExperience() != null && validator.getProjectExperience() != null && validator.getPersonalSummary() != null) {
            // 工作经历不为空且项目经历不为空且个人总结不为空——100分
            resumeDO.setGrade(100);
        } else if (validator.getWorkExperience() == null && validator.getProjectExperience() != null && validator.getPersonalSummary() != null) {
            // 工作经历为空，项目经历不为空且个人总结不为空——80分
            resumeDO.setGrade(80);
        } else if (validator.getWorkExperience() != null && validator.getProjectExperience() == null && validator.getPersonalSummary() != null) {
            // 项目经历为空，工作经历不为空且个人总结不为空——80分
            resumeDO.setGrade(80);
        } else if (validator.getWorkExperience() != null && validator.getProjectExperience() != null && validator.getPersonalSummary() == null) {
            // 个人总结为空，工作经历不为空且项目经历不为空——80分
            resumeDO.setGrade(80);
        } else if (validator.getWorkExperience() == null && validator.getProjectExperience() == null && validator.getPersonalSummary() != null) {
            // 工作经历为空且项目经历为空，个人总结不为空——60分
            resumeDO.setGrade(60);
        } else if (validator.getWorkExperience() == null && validator.getProjectExperience() != null && validator.getPersonalSummary() == null) {
            // 工作经历为空且个人总结为空，项目经历不为空——60分
            resumeDO.setGrade(60);
        } else if (validator.getWorkExperience() != null && validator.getProjectExperience() == null && validator.getPersonalSummary() == null) {
            // 项目经历为空且个人总结为空，工作经历不为空——60分
            resumeDO.setGrade(60);
        } else {
            // 工作经历为空且项目经历为空且个人总结为空（由于专业技能和教育经历必填，所以保底有40分）——40分
            resumeDO.setGrade(40);
        }
        return resumeMapper.insert(resumeDO) > 0;
    }

    @Override
    public boolean updateResume(ResumeDO resumeDO, CreateOrUpdateResumeDTO validator) {
        resumeDO.setAbility(validator.getAbility());
        resumeDO.setWorkExperience(validator.getWorkExperience());
        resumeDO.setProjectExperience(validator.getProjectExperience());
        resumeDO.setEducationExperience(validator.getEducationExperience());
        resumeDO.setPersonalSummary(validator.getPersonalSummary());
        resumeDO.setUserId(validator.getUserId());
        // 简历评分，完成一个模块20分，总分为100分
        if (validator.getWorkExperience() != null && validator.getProjectExperience() != null && validator.getPersonalSummary() != null) {
            // 工作经历不为空且项目经历不为空且个人总结不为空——100分
            resumeDO.setGrade(100);
        } else if (validator.getWorkExperience() == null && validator.getProjectExperience() != null && validator.getPersonalSummary() != null) {
            // 工作经历为空，项目经历不为空且个人总结不为空——80分
            resumeDO.setGrade(80);
        } else if (validator.getWorkExperience() != null && validator.getProjectExperience() == null && validator.getPersonalSummary() != null) {
            // 项目经历为空，工作经历不为空且个人总结不为空——80分
            resumeDO.setGrade(80);
        } else if (validator.getWorkExperience() != null && validator.getProjectExperience() != null && validator.getPersonalSummary() == null) {
            // 个人总结为空，工作经历不为空且项目经历不为空——80分
            resumeDO.setGrade(80);
        } else if (validator.getWorkExperience() == null && validator.getProjectExperience() == null && validator.getPersonalSummary() != null) {
            // 工作经历为空且项目经历为空，个人总结不为空——60分
            resumeDO.setGrade(60);
        } else if (validator.getWorkExperience() == null && validator.getProjectExperience() != null && validator.getPersonalSummary() == null) {
            // 工作经历为空且个人总结为空，项目经历不为空——60分
            resumeDO.setGrade(60);
        } else if (validator.getWorkExperience() != null && validator.getProjectExperience() == null && validator.getPersonalSummary() == null) {
            // 项目经历为空且个人总结为空，工作经历不为空——60分
            resumeDO.setGrade(60);
        } else {
            // 工作经历为空且项目经历为空且个人总结为空（由于专业技能和教育经历必填，所以保底有40分）——40分
            resumeDO.setGrade(40);
        }
        return resumeMapper.updateById(resumeDO) > 0;
    }
}
