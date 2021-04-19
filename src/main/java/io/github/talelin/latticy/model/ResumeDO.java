package io.github.talelin.latticy.model;

import io.github.talelin.latticy.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @author 陈灿杰
 * @since 2021-03-14
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@TableName("resume")
public class ResumeDO extends BaseModel {

    /**
     * 专业技能
     */
    private String ability;

    /**
     * 工作经历
     */
    private String workExperience;

    /**
     * 项目经历
     */
    private String projectExperience;

    /**
     * 教育经历
     */
    private String educationExperience;

    /**
     * 个人总结
     */
    private String personalSummary;

    /**
     * 用户id
     */
    private Integer userId;

    /**
     * 简历分数
     */
    private Integer grade;
}
