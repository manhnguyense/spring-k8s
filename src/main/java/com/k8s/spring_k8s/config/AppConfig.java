package com.k8s.spring_k8s.config;

import com.k8s.spring_k8s.config.entity.K8s;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Data
@Configuration
@ConfigurationProperties(prefix = "app")
public class AppConfig {
    private K8s k8s;
}
