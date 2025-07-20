package com.Project.Url_Shortner_Project.domain.models;

public record CreateUserCmd(
        String email,
        String password,
        String name,
        Role role) {
}