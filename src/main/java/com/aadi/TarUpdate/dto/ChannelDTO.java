package com.aadi.TarUpdate.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ChannelDTO {
    private String channelName;
    private String version;
    private String fileName;
}
