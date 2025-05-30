package com.k8s.spring_k8s.controller;

import com.k8s.spring_k8s.config.AppConfig;
import com.k8s.spring_k8s.config.entity.K8s;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/k8s")
@Slf4j
public class K8sController {
    private final AppConfig appConfig;

    @GetMapping("/namespace")
    public ResponseEntity<String> getK8sNamespace() {
        final K8s k8s = appConfig.getK8s();
        final String namespace = k8s.getNamespace();
        log.info("Fetching Kubernetes namespace: {}, env: {}", namespace, appConfig);
      return ResponseEntity.status(HttpStatus.OK)
          .body(appConfig.toString());
    }
}
