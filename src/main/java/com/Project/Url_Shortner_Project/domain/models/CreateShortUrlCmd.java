package com.Project.Url_Shortner_Project.domain.models;

public record CreateShortUrlCmd(
        String originalUrl,
        Boolean isPrivate,
        Integer expirationInDays,
        Long userId
) {
}