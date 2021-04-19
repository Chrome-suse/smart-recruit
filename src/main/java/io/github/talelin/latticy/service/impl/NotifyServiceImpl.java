package io.github.talelin.latticy.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import io.github.talelin.latticy.model.NotifyDO;
import io.github.talelin.latticy.mapper.NotifyMapper;
import io.github.talelin.latticy.service.NotifyService;
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
 * @since 2021-04-16
 */
@Service
public class NotifyServiceImpl extends ServiceImpl<NotifyMapper, NotifyDO> implements NotifyService {

    @Autowired
    private NotifyMapper notifyMapper;

    @Override
    public boolean create(NotifyDO notifyDO) {
        return notifyMapper.insert(notifyDO) > 0;
    }

    @Override
    public List<NotifyDO> get(String userName, String isRead) {
        QueryWrapper<NotifyDO> wrapper = new QueryWrapper<>();
        wrapper.eq("user_name", userName).eq("is_read", isRead);
        return notifyMapper.selectList(wrapper);
    }

    @Override
    public List<NotifyDO> getAll(String userName) {
        QueryWrapper<NotifyDO> wrapper = new QueryWrapper<>();
        wrapper.eq("user_name", userName);
        return notifyMapper.selectList(wrapper);
    }

    @Override
    public boolean update(String userName) {
        return notifyMapper.update(userName);
    }
}
