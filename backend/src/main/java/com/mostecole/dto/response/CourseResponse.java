package com.mostecole.dto.response;

import com.mostecole.entity.ContentType;
import java.time.LocalDateTime;
import java.util.UUID;

public record CourseResponse(
    UUID id,
    String title,
    String description,
    Long subjectId,
    String subjectName,
    Long levelId,
    Integer levelNumber,
    String teacherName,
    ContentType contentType,
    String contentUrl,
    String contentText,
    Boolean isPublished,
    LocalDateTime createdAt
) {}
