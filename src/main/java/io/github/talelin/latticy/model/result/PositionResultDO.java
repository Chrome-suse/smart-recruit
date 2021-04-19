package io.github.talelin.latticy.model.result;

import io.github.talelin.latticy.model.PositionDO;
import lombok.Data;

/**
 * @author 陈灿杰
 * @since 2021-04-02
 */
@Data
public class PositionResultDO extends PositionDO {

    /**
     * 分类名称
     */
    private String CategoryName;

    /**
     * 公司名称
     */
    private String CompanyName;

    /**
     * 公司简介
     */
    private String CompanyDesc;

    /**
     * 公司logo
     */
    private String logo;
}
