package io.github.talelin.latticy.service.impl;

import io.github.talelin.latticy.dto.category.CreateOrUpdateCategoryDTO;
import io.github.talelin.latticy.model.CategoryDO;
import io.github.talelin.latticy.mapper.CategoryMapper;
import io.github.talelin.latticy.service.CategoryService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-04-04
 */
@Service
public class CategoryServiceImpl extends ServiceImpl<CategoryMapper, CategoryDO> implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public boolean createCategory(CreateOrUpdateCategoryDTO validator) {
        CategoryDO  categoryDO = new CategoryDO();
        categoryDO.setName(validator.getName());
        categoryDO.setDescription(validator.getDescription());
        return categoryMapper.insert(categoryDO) > 0;
    }

    @Override
    public boolean updateCategory(CategoryDO categoryDO, CreateOrUpdateCategoryDTO validator) {
        categoryDO.setName(validator.getName());
        categoryDO.setDescription(validator.getDescription());
        return categoryMapper.updateById(categoryDO) > 0;
    }

    @Override
    public boolean deleteById(Integer id) {
        return categoryMapper.deleteById(id) > 0;
    }

    @Override
    public List<CategoryDO> getAll() {
        return categoryMapper.selectList(null);
    }

    @Override
    public List<CategoryDO> show() {
        return categoryMapper.show();
    }
}
