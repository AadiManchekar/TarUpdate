package com.aadi.TarUpdate.dto;

import java.util.UUID;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class AppDTO {
    private UUID appId;
    private String appName;
}
