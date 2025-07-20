package com.Project.Url_Shortner_Project.domain.entities.models;

public record CreateUserCmd(
        String email,
        String password,
        String name,
        Role role) {
}