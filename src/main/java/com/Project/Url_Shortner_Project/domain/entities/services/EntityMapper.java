package com.Project.Url_Shortner_Project.domain.entities.services;

import com.Project.Url_Shortner_Project.domain.entities.ShortUrl;
import com.Project.Url_Shortner_Project.domain.entities.User;
import com.Project.Url_Shortner_Project.domain.entities.models.ShortUrlDto;
import com.Project.Url_Shortner_Project.domain.entities.models.UserDto;
import org.springframework.stereotype.Component;

@Component
public class EntityMapper {

    public ShortUrlDto toShortUrlDto(ShortUrl shortUrl) {
        UserDto userDto = null;
        if(shortUrl.getCreatedBy() != null) {
            userDto = toUserDto(shortUrl.getCreatedBy());
        }

        return new ShortUrlDto(
                shortUrl.getId(),
                shortUrl.getShortKey(),
                shortUrl.getOriginalUrl(),
                shortUrl.getIsPrivate(),
                shortUrl.getExpiresAt(),
                userDto,
                shortUrl.getClickCount(),
                shortUrl.getCreatedAt()
        );
    }

    public UserDto toUserDto(User user) {
        return new UserDto(user.getId(), user.getName());
    }
}