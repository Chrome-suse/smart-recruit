package io.github.talelin.latticy.controller.v1;

import com.baomidou.mybatisplus.core.metadata.IPage;
import io.github.talelin.autoconfigure.exception.NotFoundException;
import io.github.talelin.core.annotation.GroupRequired;
import io.github.talelin.core.annotation.PermissionMeta;
import io.github.talelin.core.annotation.PermissionModule;
import io.github.talelin.latticy.common.mybatis.Page;
import io.github.talelin.latticy.common.util.PageUtil;
import io.github.talelin.latticy.dto.category.CreateOrUpdateCategoryDTO;
import io.github.talelin.latticy.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import io.github.talelin.latticy.model.CategoryDO;
import io.github.talelin.latticy.vo.CreatedVO;
import io.github.talelin.latticy.vo.DeletedVO;
import io.github.talelin.latticy.vo.PageResponseVO;
import io.github.talelin.latticy.vo.UpdatedVO;

import javax.validation.constraints.Min;
import javax.validation.constraints.Max;
import javax.validation.constraints.Positive;
import java.util.List;


/**
* @author 陈灿杰
* @since 2021-04-04
*/
@RestController
@RequestMapping("/v1/category")
@PermissionModule(value = "职位分类")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    /**
     * 新增职位分类
     * @param validator
     * @return
     */
    @PostMapping("")
    @GroupRequired
    @PermissionMeta(value = "新增分类")
    public CreatedVO create(@RequestBody @Validated CreateOrUpdateCategoryDTO validator) {
        categoryService.createCategory(validator);
        return new CreatedVO(5000);
    }

    /**
     * 更新职位分类信息
     * @param id
     * @return
     */
    @PutMapping("/{id}")
    @GroupRequired
    @PermissionMeta(value = "更新分类")
    public UpdatedVO update(@PathVariable @Positive(message = "{id.positive}") Integer id, @RequestBody @Validated CreateOrUpdateCategoryDTO validator) {
        CategoryDO categoryDO = categoryService.getById(id);
        if (categoryDO == null) {
            throw new NotFoundException(50000);
        }
        categoryService.updateCategory(categoryDO, validator);
        return new UpdatedVO(5100);
    }

    /**
     * 根据id删除职位分类
     * @param id
     * @return
     */
    @DeleteMapping("/{id}")
    @GroupRequired
    @PermissionMeta(value = "删除分类")
    public DeletedVO delete(@PathVariable @Positive(message = "{id.positive}") Integer id) {
        CategoryDO categoryDO = categoryService.getById(id);
        if (categoryDO == null) {
            throw new NotFoundException(50000);
        }
        categoryService.deleteById(categoryDO.getId());
        return new DeletedVO(5200);
    }

    /**
     * 根据id查询职位分类信息
     * @param id
     * @return
     */
    @GetMapping("/{id}")
    public CategoryDO get(@PathVariable(value = "id") @Positive(message = "{id.positive}") Integer id) {
        CategoryDO categoryDO = categoryService.getById(id);
        if (categoryDO == null) {
            throw new NotFoundException(50000);
        }
        return categoryDO;
    }

    /**
     * 查询所有职位分类
     * @return
     */
    @GetMapping("")
    public List<CategoryDO> getAll() {
        List<CategoryDO> categoryDOS = categoryService.getAll();
        if (categoryDOS == null || categoryDOS.size() == 0) {
            throw new NotFoundException(51000);
        }
        return categoryDOS;
    }

    /**
     * 分页查询所有职位分类列表
     * @param count
     * @param page
     * @return
     */
    @GetMapping("/page")
    @GroupRequired
    @PermissionMeta(value = "查看分类列表")
    public PageResponseVO<CategoryDO> page(
            @RequestParam(name = "count", required = false, defaultValue = "10")
            @Min(value = 1, message = "{page.count.min}")
            @Max(value = 30, message = "{page.count.max}") Integer count,
            @RequestParam(name = "page", required = false, defaultValue = "0")
            @Min(value = 0, message = "{page.number.min}") Integer page
    ) {
        Page<CategoryDO> pager = new Page<>( page,count);
        IPage<CategoryDO> paging = categoryService.getBaseMapper().selectPage(pager, null);
        return PageUtil.build(paging);
    }
}
