package io.github.talelin.latticy.mapper;

import io.github.talelin.latticy.model.CategoryDO;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-04
 */
public interface CategoryMapper extends BaseMapper<CategoryDO> {

    List<CategoryDO> show();
}
