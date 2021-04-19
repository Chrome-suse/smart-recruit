package io.github.talelin.latticy.model.result;

import io.github.talelin.latticy.model.ApplicationDO;
import lombok.Data;

/**
 * @author 陈灿杰
 * @since 2021-04-02
 */
@Data
public class ApplicationResultDO extends ApplicationDO {

    /**
     * 用户昵称
     */
    private String nickname;

    /**
     * 用户邮箱
     */
    private String email;

    /**
     * 职位名称
     */
    private String title;

    /**
     * 简历分数
     */
    private Integer grade;

    /**
     * 工作地点
     */
    private String positionCity;

    /**
     * 最低薪资
     */
    private Integer salaryDown;

    /**
     * 最高薪资
     */
    private Integer salaryUp;

    /**
     * 公司名称
     */
    private String name;
}
