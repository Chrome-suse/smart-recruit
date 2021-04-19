package io.github.talelin.latticy.controller.v1;

import io.github.talelin.autoconfigure.exception.NotFoundException;
import io.github.talelin.core.annotation.GroupRequired;
import io.github.talelin.core.annotation.PermissionMeta;
import io.github.talelin.core.annotation.PermissionModule;
import io.github.talelin.latticy.dto.resume.CreateOrUpdateResumeDTO;
import io.github.talelin.latticy.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import io.github.talelin.latticy.model.ResumeDO;
import io.github.talelin.latticy.vo.CreatedVO;
import io.github.talelin.latticy.vo.DeletedVO;
import io.github.talelin.latticy.vo.UpdatedVO;
import javax.validation.constraints.Positive;

/**
* @author 陈灿杰
* @since 2021-03-14
*/
@RestController
@RequestMapping("/v1/resume")
@PermissionModule(value = "简历")
public class ResumeController {

    @Autowired
    private ResumeService resumeService;

    /**
     * 创建简历
     * @param validator
     * @return
     */
    @PostMapping("")
    @GroupRequired
    @PermissionMeta(value = "创建简历")
    public CreatedVO create(@RequestBody @Validated CreateOrUpdateResumeDTO validator) {
        resumeService.createResume(validator);
        return new CreatedVO(1000);
    }

    /**
     * 根据用户id更新简历
     * @param userId
     * @return
     */
    @PutMapping("/{userId}")
    @GroupRequired
    @PermissionMeta(value = "更新简历")
    public UpdatedVO update(@PathVariable @Positive(message = "{id.positive}") Integer userId, @RequestBody @Validated CreateOrUpdateResumeDTO validator) {
        // 根据用户id查询简历
        ResumeDO resumeDO = getByUserId(userId);
        if (resumeDO == null) {
            throw new NotFoundException(20010);
        }
        // 更新简历
        resumeService.updateResume(resumeDO, validator);
        return new UpdatedVO(1010);
    }

    /**
     * 根据用户id查询简历（每个用户只绑定一份简历）
     * @param userId
     * @return
     */
    @GetMapping("/get/{userId}")
    @GroupRequired
    @PermissionMeta(value = "查询简历")
    public ResumeDO getByUserId(@PathVariable(value = "userId") @Positive(message = "{id.positive}") Integer userId) {
        ResumeDO resume = resumeService.getByUserId(userId);
        if (resume == null) {
            throw new NotFoundException(20010);
        }
        return resume;
    }

    /**
     * 根据id查询简历
     * @param id
     * @return
     */
    @GetMapping("/{id}")
    public ResumeDO get(@PathVariable(value = "id") @Positive(message = "{id.positive}") Integer id) {
        ResumeDO resume = resumeService.getById(id);
        if (resume == null) {
            throw new NotFoundException(20020);
        }
        return resume;
    }

}
