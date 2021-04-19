package io.github.talelin.latticy.mapper;

import io.github.talelin.latticy.model.ResumeDO;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author 陈灿杰
 * @since 2021-03-14
 */
public interface ResumeMapper extends BaseMapper<ResumeDO> {

    ResumeDO getByUserId(@Param("userId") Integer userId);
}
