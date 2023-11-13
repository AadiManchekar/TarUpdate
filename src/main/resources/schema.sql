-- Create Apps table
CREATE TABLE apps (
    app_id UUID PRIMARY KEY,
    app_name VARCHAR(255) NOT NULL
);

-- Create Channels table
CREATE TABLE channels (
    channel_id SERIAL PRIMARY KEY,
    channel_name VARCHAR(255) NOT NULL,
    app_id UUID,
    Version VARCHAR(50) NOT NULL,
    FOREIGN KEY (app_id) REFERENCES apps(app_id)
);

-- Create Files table
CREATE TABLE files (
    file_id SERIAL PRIMARY KEY,
    file_name VARCHAR(255) NOT NULL,
    app_id UUID,
    channel_id SERIAL,
    FOREIGN KEY (app_id) REFERENCES apps(app_id),
    FOREIGN KEY (channel_id) REFERENCES channels(channel_id)
);

-- Indexes
-- CREATE INDEX idx_channels_app_id_channel_id ON channels (app_id, channel_id);
CREATE INDEX idx_apps_app_id ON apps (app_id);
CREATE INDEX idx_channels_app_id ON channels (app_id);
