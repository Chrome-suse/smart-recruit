package io.github.talelin.latticy.service;

import io.github.talelin.latticy.dto.category.CreateOrUpdateCategoryDTO;
import io.github.talelin.latticy.model.CategoryDO;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-04
 */
public interface CategoryService extends IService<CategoryDO> {

    boolean createCategory(CreateOrUpdateCategoryDTO validator);

    boolean updateCategory(CategoryDO categoryDO, CreateOrUpdateCategoryDTO validator);

    boolean deleteById(Integer id);

    List<CategoryDO> getAll();
}
