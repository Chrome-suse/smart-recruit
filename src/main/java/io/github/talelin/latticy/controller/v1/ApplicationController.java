package io.github.talelin.latticy.controller.v1;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import io.github.talelin.autoconfigure.exception.NotFoundException;
import io.github.talelin.core.annotation.GroupRequired;
import io.github.talelin.core.annotation.PermissionMeta;
import io.github.talelin.core.annotation.PermissionModule;
import io.github.talelin.latticy.model.result.ApplicationResultDO;
import io.github.talelin.latticy.service.ApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import io.github.talelin.latticy.model.ApplicationDO;
import io.github.talelin.latticy.vo.CreatedVO;
import io.github.talelin.latticy.vo.DeletedVO;
import io.github.talelin.latticy.vo.PageResponseVO;
import io.github.talelin.latticy.vo.UpdatedVO;

import javax.validation.constraints.Min;
import javax.validation.constraints.Max;
import javax.validation.constraints.Positive;

/**
* @author 陈灿杰
* @since 2021-04-04
*/
@RestController
@RequestMapping("/v1/application")
@PermissionModule(value = "申请")
public class ApplicationController {

    @Autowired
    private ApplicationService applicationService;

    /**
     * 投递简历——添加申请
     * @return
     */
    @PostMapping("")
    @GroupRequired
    @PermissionMeta(value = "投递简历")
    public CreatedVO create(@RequestBody ApplicationDO applicationDO) {
        applicationService.create(applicationDO);
        return new CreatedVO(7000);
    }

    /**
     * 根据申请id修改状态state
     * @param id
     * @param state
     * @return
     */
    @PutMapping("/state/{id}")
    @GroupRequired
    @PermissionMeta(value = "申请审核")
    public UpdatedVO update(@PathVariable @Positive(message = "{id.positive}") Integer id, @RequestParam Integer state) {
        // 根据id查找申请
        ApplicationDO applicationDO = applicationService.getById(id);
        if (applicationDO == null) {
            throw new NotFoundException(70000);
        }
        // 更新申请状态
        applicationService.updateState(id, state);
        return new UpdatedVO(7100);
    }

    /**
     * 根据id撤销申请（只有未处理的申请才可以撤销，即state=0的申请才可以撤销）
     * @param id
     * @return
     */
    @DeleteMapping("/{id}")
    @GroupRequired
    @PermissionMeta(value = "撤销申请")
    public DeletedVO delete(@PathVariable @Positive(message = "{id.positive}") Integer id) {
        // 根据id查找申请
        ApplicationDO applicationDO = applicationService.getById(id);
        if (applicationDO == null) {
            throw new NotFoundException(70000);
        }
        applicationService.removeById(id);
        return new DeletedVO(7200);
    }

    /**
     * 根据用户id和职位id查询申请表，避免重复投递同个岗位
     * @param positionId
     * @param userId
     * @return
     */
    @GetMapping("")
    public Boolean get(@RequestParam Integer positionId, @RequestParam Integer userId) {
        QueryWrapper<ApplicationDO> wrapper = new QueryWrapper<>();
        wrapper.eq("position_id", positionId).eq("user_id", userId);
        ApplicationDO applicationDO = applicationService.getOne(wrapper);
        if (applicationDO == null) {
            return true;
        }
        return false;
    }

    /**
     * 根据hr_id查询该hr接收到的所有简历，并且根据state区分申请的状态
     * @param count
     * @param page
     * @param hrID
     * @param state
     * @return
     */
    @GetMapping("/page/{hrID}")
    @GroupRequired
    @PermissionMeta(value = "简历管理")
    public PageResponseVO<ApplicationResultDO> page(
            @RequestParam(name = "count", required = false, defaultValue = "10")
            @Min(value = 1, message = "{page.count.min}")
            @Max(value = 30, message = "{page.count.max}") Integer count,
            @RequestParam(name = "page", required = false, defaultValue = "0")
            @Min(value = 0, message = "{page.number.min}") Integer page,
            @PathVariable(value = "hrID") @Positive(message = "{id.positive}") Integer hrID,
            @RequestParam Integer state
    ) {
        return applicationService.getByHrId(count, page, hrID, state);
    }

    /**
     * 根据hr_id查询该hr接收到的所有简历，并且根据简历的分数进行排序
     * @param count
     * @param page
     * @param hrID
     * @return
     */
    @GroupRequired
    @PermissionMeta(value = "简历排序")
    @GetMapping("/sort/{hrID}")
    public PageResponseVO<ApplicationResultDO> sort(
            @RequestParam(name = "count", required = false, defaultValue = "10")
            @Min(value = 1, message = "{page.count.min}")
            @Max(value = 30, message = "{page.count.max}") Integer count,
            @RequestParam(name = "page", required = false, defaultValue = "0")
            @Min(value = 0, message = "{page.number.min}") Integer page,
            @PathVariable(value = "hrID") @Positive(message = "{id.positive}") Integer hrID
    ) {
        return applicationService.sort(count, page, hrID);
    }

    /**
     * 根据user_id查询用户的所有申请，并且根据state区分申请的状态
     * @param count
     * @param page
     * @param userId
     * @param state
     * @return
     */
    @GetMapping("/page/find/{userId}")
    @GroupRequired
    @PermissionMeta(value = "我的投递箱")
    public PageResponseVO<ApplicationResultDO> pageByUserId(
            @RequestParam(name = "count", required = false, defaultValue = "10")
            @Min(value = 1, message = "{page.count.min}")
            @Max(value = 30, message = "{page.count.max}") Integer count,
            @RequestParam(name = "page", required = false, defaultValue = "0")
            @Min(value = 0, message = "{page.number.min}") Integer page,
            @PathVariable(value = "userId") @Positive(message = "{id.positive}") Integer userId,
            @RequestParam Integer state
    ) {
        return applicationService.getByUserId(count, page, userId, state);
    }
}
