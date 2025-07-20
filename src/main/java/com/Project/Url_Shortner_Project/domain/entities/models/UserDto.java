package com.Project.Url_Shortner_Project.domain.entities.models;

import java.io.Serializable;

/**
 * DTO for {@link com.sivalabs.urlshortener.domain.entities.User}
 */
public record UserDto(Long id, String name) implements Serializable {
}