package io.github.talelin.latticy.service.impl;

import io.github.talelin.latticy.dto.position.CreateOrUpdatePositionDTO;
import io.github.talelin.latticy.model.PositionDO;
import io.github.talelin.latticy.mapper.PositionMapper;
import io.github.talelin.latticy.model.result.PositionResultDO;
import io.github.talelin.latticy.service.PositionService;
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
 * @since 2021-04-02
 */
@Service
public class PositionServiceImpl extends ServiceImpl<PositionMapper, PositionDO> implements PositionService {

    @Autowired
    private PositionMapper positionMapper;

    @Override
    public PositionResultDO getById(Integer id) {
        return positionMapper.getById(id);
    }

    @Override
    public boolean updateState(Integer id, Integer state) {
        return positionMapper.updateState(id, state);
    }

    @Override
    public boolean updateHits(Integer id) {
        return positionMapper.updateHits(id);
    }

    @Override
    public PositionDO findById(Integer id) {
        return positionMapper.selectById(id);
    }

    @Override
    public boolean createPosition(CreateOrUpdatePositionDTO validator) {
        PositionDO positionDO = new PositionDO();
        positionDO.setTitle(validator.getTitle());
        positionDO.setRequirement(validator.getRequirement());
        positionDO.setQuantity(validator.getQuantity());
        positionDO.setCity(validator.getCity());
        positionDO.setSalaryUp(validator.getSalaryUp());
        positionDO.setSalaryDown(validator.getSalaryDown());
        positionDO.setCategoryId(validator.getCategoryId());
        positionDO.setHrId(validator.getHrId());
        positionDO.setCompanyId(validator.getCompanyId());
        return positionMapper.insert(positionDO) > 0;
    }

    @Override
    public boolean updatePosition(PositionDO positionDO, CreateOrUpdatePositionDTO validator) {
        positionDO.setTitle(validator.getTitle());
        positionDO.setRequirement(validator.getRequirement());
        positionDO.setQuantity(validator.getQuantity());
        positionDO.setCity(validator.getCity());
        positionDO.setSalaryUp(validator.getSalaryUp());
        positionDO.setSalaryDown(validator.getSalaryDown());
        positionDO.setCategoryId(validator.getCategoryId());
        positionDO.setHrId(validator.getHrId());
        positionDO.setCompanyId(validator.getCompanyId());
        // 更新职位信息之后，需要管理员重新审核，把职位状态state改为0
        positionDO.setState(0);
        return positionMapper.updateById(positionDO) > 0;
    }

    @Override
    public List<PositionResultDO> sort() {
        return positionMapper.sortByHits();
    }
}
