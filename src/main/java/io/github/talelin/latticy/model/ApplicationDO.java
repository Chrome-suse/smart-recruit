package io.github.talelin.latticy.model;

import io.github.talelin.latticy.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import java.time.LocalDateTime;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @author 陈灿杰
 * @since 2021-04-04
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@TableName("application")
public class ApplicationDO extends BaseModel {

    /**
     * 状态
     */
    private Integer state;

    /**
     * 申请时间
     */
    private LocalDateTime applyTime;

    /**
     * 简历id
     */
    private Integer resumeId;

    /**
     * 职位id
     */
    private Integer positionId;

    /**
     * 用户id
     */
    private Integer userId;

    /**
     * HR id
     */
    private Integer hrId;
}
