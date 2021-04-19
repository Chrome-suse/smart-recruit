package io.github.talelin.latticy.dto.category;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotEmpty;

/**
 * @Author 陈灿杰
 * @create 2021/4/4 13:03
 */
@Data
@NoArgsConstructor
public class CreateOrUpdateCategoryDTO {
    @NotEmpty(message = "{category.name.not-empty}")
    private String name;

    @NotEmpty(message = "{category.description.not-empty}")
    private String description;
}
