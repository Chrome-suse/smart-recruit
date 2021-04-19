package io.github.talelin.latticy.model;

import io.github.talelin.latticy.model.BaseModel;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * @author 陈灿杰
 * @since 2021-04-05
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@TableName("hr_company")
public class HrCompanyDO extends BaseModel {

    /**
     * HR id
     */
    private Integer hrId;

    /**
     * 公司id
     */
    private Integer companyId;
}
