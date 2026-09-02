package com.mostecole.dto.request;

import com.mostecole.entity.ContentType;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record CreateCourseRequest(
    @NotBlank String title,
    String description,
    @NotNull Long subjectId,
    @NotNull Long levelId,
    @NotNull ContentType contentType,
    String contentUrl,
    String contentText,
    Boolean isPublished
) {}
