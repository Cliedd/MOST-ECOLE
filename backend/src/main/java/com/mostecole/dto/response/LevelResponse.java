package com.mostecole.dto.response;

public record LevelResponse(
    Long id,
    Integer levelNumber,
    String degreeName,
    String displayName,
    String description
) {}
