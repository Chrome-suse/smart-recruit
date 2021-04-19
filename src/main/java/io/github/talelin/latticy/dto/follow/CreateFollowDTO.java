package io.github.talelin.latticy.dto.follow;

import lombok.Data;
import lombok.NoArgsConstructor;
import javax.validation.constraints.NotNull;

/**
 * @author 陈灿杰
 * @since 2021-03-14
 */
@Data
@NoArgsConstructor
public class CreateFollowDTO {

    @NotNull(message = "{follow.userId.not-empty}")
    private Integer userId;

    @NotNull(message = "{follow.companyId.not-empty}")
    private Integer companyId;
}
