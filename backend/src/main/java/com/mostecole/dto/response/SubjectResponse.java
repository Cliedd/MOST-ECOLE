package com.mostecole.dto.response;

public record SubjectResponse(
    Long id,
    String name,
    String description,
    Long levelId,
    Integer levelNumber
) {}
