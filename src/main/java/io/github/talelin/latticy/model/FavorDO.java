package io.github.talelin.latticy.model;

import io.github.talelin.latticy.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @author 陈灿杰
 * @since 2021-04-02
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@TableName("favor")
public class FavorDO extends BaseModel {

    /**
     * 用户id
     */
    private Integer userId;

    /**
     * 职位id
     */
    private Integer positionId;
}
