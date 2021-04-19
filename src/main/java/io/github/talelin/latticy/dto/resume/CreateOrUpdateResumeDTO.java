package io.github.talelin.latticy.dto.resume;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

/**
 * @Author 陈灿杰
 * @create 2021/4/1 13:03
 */
@Data
@NoArgsConstructor
public class CreateOrUpdateResumeDTO {

    @NotEmpty(message = "{resume.ability.not-empty}")
    @Length(max = 1000, message = "{resume.ability.length}")
    private String ability;

    @Length(max = 1000, message = "{resume.workExperience.length}")
    private String workExperience;

    @Length(max = 1000, message = "{resume.projectExperience.length}")
    private String projectExperience;

    @NotEmpty(message = "{resume.educationExperience.not-empty}")
    @Length(max = 1000, message = "{resume.educationExperience.length}")
    private String educationExperience;

    @Length(max = 1000, message = "{resume.personalSummary.length}")
    private String personalSummary;

    @NotNull(message = "{resume.userId.not-empty}")
    private Integer userId;

    private Integer grade;
}
