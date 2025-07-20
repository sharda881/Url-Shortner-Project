package com.Project.Url_Shortner_Project.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "app")
public class ApplicationProperties {
    
    private String baseUrl = "http://localhost:8080";
    private int pageSize = 10;
    private boolean validateOriginalUrl = true;
    private int defaultExpiryInDays = 365;
    
    public String baseUrl() {
        return baseUrl;
    }
    
    public void setBaseUrl(String baseUrl) {
        this.baseUrl = baseUrl;
    }
    
    public int pageSize() {
        return pageSize;
    }
    
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    
    public boolean validateOriginalUrl() {
        return validateOriginalUrl;
    }
    
    public void setValidateOriginalUrl(boolean validateOriginalUrl) {
        this.validateOriginalUrl = validateOriginalUrl;
    }
    
    public int defaultExpiryInDays() {
        return defaultExpiryInDays;
    }
    
    public void setDefaultExpiryInDays(int defaultExpiryInDays) {
        this.defaultExpiryInDays = defaultExpiryInDays;
    }
}
