package com.k8s.spring_k8s.config.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class K8s implements Serializable {
    private String namespace;
    private String env;
}
