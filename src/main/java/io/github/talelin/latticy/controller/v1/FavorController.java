package io.github.talelin.latticy.controller.v1;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import io.github.talelin.autoconfigure.exception.NotFoundException;
import io.github.talelin.core.annotation.GroupRequired;
import io.github.talelin.core.annotation.PermissionMeta;
import io.github.talelin.core.annotation.PermissionModule;
import io.github.talelin.latticy.model.PositionDO;
import io.github.talelin.latticy.service.FavorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import io.github.talelin.latticy.model.FavorDO;
import io.github.talelin.latticy.vo.CreatedVO;
import io.github.talelin.latticy.vo.DeletedVO;
import javax.validation.constraints.Positive;

import java.util.List;

/**
* @author 陈灿杰
* @since 2021-04-02
*/
@RestController
@RequestMapping("/v1/favor")
@PermissionModule(value = "收藏职位")
public class FavorController {

    @Autowired
    private FavorService favorService;

    /**
     * 添加收藏
     * @return
     */
    @PostMapping("")
    @GroupRequired
    @PermissionMeta(value = "添加收藏")
    public CreatedVO create(@RequestBody FavorDO favorDO) {
        // 查询是否已经收藏过该职位
        FavorDO favor = find(favorDO.getUserId(), favorDO.getPositionId());
        if (favor != null) {
            // 已经收藏过该职位
            throw new NotFoundException(40010);
        }
        favorService.create(favorDO);
        // 未收藏过该职位，可以收藏
        return new CreatedVO(1600);
    }

    /**
     * 根据用户id和职位id取消收藏该职位
     * @param userId
     * @param positionId
     * @return
     */
    @DeleteMapping("/cancel")
    @GroupRequired
    @PermissionMeta(value = "取消收藏")
    public DeletedVO cancelFavor(@RequestParam @Positive(message = "{id.positive}") Integer userId, @RequestParam @Positive(message = "{id.positive}") Integer positionId) {
        favorService.cancelFavor(userId, positionId);
        return new DeletedVO(1500);
    }

    /**
     * 根据用户id查询该用户的所有收藏
     * @param userId
     * @return
     */
    @GetMapping("/{userId}")
    @GroupRequired
    @PermissionMeta(value = "查看我的收藏")
    public List<PositionDO> getAllByUserId(@PathVariable(value = "userId") @Positive(message = "{id.positive}") Integer userId) {
        List<PositionDO> positionDOS = favorService.getAllByUserId(userId);
        return positionDOS;
    }

    /**
     * 根据用户id和职位id查询收藏，避免重复收藏同一职位
     * @param userId
     * @return
     */
    @GetMapping("/find")
    public FavorDO find(@RequestParam Integer userId, @RequestParam Integer positionId) {
        QueryWrapper<FavorDO> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id", userId).eq("position_id", positionId);
        FavorDO favorDO = favorService.getOne(wrapper);
        return favorDO;
    }
}
