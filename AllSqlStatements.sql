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
CREATE INDEX idx_channels_app_id_channel_id ON channels (app_id, channel_id);
CREATE INDEX idx_apps_app_id ON apps (app_id);
CREATE INDEX idx_channels_app_id ON channels (app_id);

-- Insert data into Apps table
INSERT INTO apps (app_id, app_name) VALUES
    ('9a76fdbe-3f7c-4a59-8fa5-09e7f8c8e7d1', 'UserMicroservice'),
    ('7ec9d29f-8b13-4d2c-b729-7f6893e2b4ab', 'PaymentMicroservice'),
    ('4f29e3e1-6e02-44ec-a244-9aa18d1c2955', 'OrderMicroservice'),
    ('f4d508d9-8520-4652-98f2-13cbb5a58625', 'InventoryMicroservice'),
    ('1f38cb34-119c-4b7e-9d27-3988bf55f51a', 'NotificationMicroservice'),
    ('b42db269-147c-49ab-804d-2f41f41b935a', 'AuthenticationMicroservice'),
    ('89338e1e-35aa-4d9b-a96f-82e10fe1a9b7', 'AnalyticsMicroservice'),
    ('c10a50d1-0b94-4d41-bc2b-9071d82543e7', 'SearchMicroservice'),
    ('ce06bcda-af6d-4b8b-8ea9-72f6b74e5a13', 'MessagingMicroservice'),
    ('a7cf5db0-7ed0-45e6-8583-92694a4f8f1c', 'RecommendationMicroservice'),
    ('d6e35b15-e65b-42a4-aa7a-4c0579f24352', 'LoggingMicroservice'),
    ('4db25f69-0e16-49e8-927d-3a6b73c079c5', 'ReportingService'),
    ('bc4a9b88-10b7-4d36-9b0a-1e30d37c8f38', 'CustomerFeedbackService'),
    ('1d65f1ec-37b0-418a-bd14-48a850b90e02', 'EventSchedulerService'),
    ('6b8d9a87-573d-4e10-84a6-f0343ee5ab95', 'GeoLocationService'),
    ('f91378b0-0c21-47b3-ae0c-6c9d8bc14c5e', 'SubscriptionService'),
    ('25fb2dd2-07e0-4b18-a42f-2491ad4b3e10', 'DocumentStorageService'),
    ('76c2ee75-dbc6-4e2e-8584-8112a43f91a6', 'ShippingService'),
    ('dab62d33-82da-4ab2-a1f2-168d1e85efb1', 'RecommendationEngineService');


-- Insert data into Channels table
INSERT INTO channels (channel_id, channel_name, app_id, Version) VALUES
    (1, 'dev', '9a76fdbe-3f7c-4a59-8fa5-09e7f8c8e7d1', '1.0'),
    (2, 'QA', '9a76fdbe-3f7c-4a59-8fa5-09e7f8c8e7d1', '1.1'),
    (3, 'prod', '9a76fdbe-3f7c-4a59-8fa5-09e7f8c8e7d1', '2.0'),
    (4, 'stress', '9a76fdbe-3f7c-4a59-8fa5-09e7f8c8e7d1', '2.1'),
    (5, 'PR', '9a76fdbe-3f7c-4a59-8fa5-09e7f8c8e7d1', '3.0'),

    (6, 'dev', '7ec9d29f-8b13-4d2c-b729-7f6893e2b4ab', '1.0'),
    (7, 'QA', '7ec9d29f-8b13-4d2c-b729-7f6893e2b4ab', '1.1'),
    (8, 'prod', '7ec9d29f-8b13-4d2c-b729-7f6893e2b4ab', '2.0'),
    (9, 'stress', '7ec9d29f-8b13-4d2c-b729-7f6893e2b4ab', '2.1'),
    (10, 'PR', '7ec9d29f-8b13-4d2c-b729-7f6893e2b4ab', '3.0'),

    (11, 'dev', '4f29e3e1-6e02-44ec-a244-9aa18d1c2955', '1.0'),
    (12, 'QA', '4f29e3e1-6e02-44ec-a244-9aa18d1c2955', '1.1'),
    (13, 'prod', '4f29e3e1-6e02-44ec-a244-9aa18d1c2955', '2.0'),
    (14, 'stress', '4f29e3e1-6e02-44ec-a244-9aa18d1c2955', '2.1'),
    (15, 'PR', '4f29e3e1-6e02-44ec-a244-9aa18d1c2955', '3.0'),

    (16, 'dev', 'f4d508d9-8520-4652-98f2-13cbb5a58625', '1.0'),
    (17, 'QA', 'f4d508d9-8520-4652-98f2-13cbb5a58625', '1.1'),
    (18, 'prod', 'f4d508d9-8520-4652-98f2-13cbb5a58625', '2.0'),
    (19, 'stress', 'f4d508d9-8520-4652-98f2-13cbb5a58625', '2.1'),
    (20, 'PR', 'f4d508d9-8520-4652-98f2-13cbb5a58625', '3.0'),

    (21, 'dev', '1f38cb34-119c-4b7e-9d27-3988bf55f51a', '1.0'),
    (22, 'QA', '1f38cb34-119c-4b7e-9d27-3988bf55f51a', '1.1'),
    (23, 'prod', '1f38cb34-119c-4b7e-9d27-3988bf55f51a', '2.0'),
    (24, 'stress', '1f38cb34-119c-4b7e-9d27-3988bf55f51a', '2.1'),
    (25, 'PR', '1f38cb34-119c-4b7e-9d27-3988bf55f51a', '3.0'),

    (26, 'dev', 'b42db269-147c-49ab-804d-2f41f41b935a', '1.0'),
    (27, 'QA', 'b42db269-147c-49ab-804d-2f41f41b935a', '1.1'),
    (28, 'prod', 'b42db269-147c-49ab-804d-2f41f41b935a', '2.0'),
    (29, 'stress', 'b42db269-147c-49ab-804d-2f41f41b935a', '2.1'),
    (30, 'PR', 'b42db269-147c-49ab-804d-2f41f41b935a', '3.0'),

    (31, 'dev', '89338e1e-35aa-4d9b-a96f-82e10fe1a9b7', '1.0'),
    (32, 'QA', '89338e1e-35aa-4d9b-a96f-82e10fe1a9b7', '1.1'),
    (33, 'prod', '89338e1e-35aa-4d9b-a96f-82e10fe1a9b7', '2.0'),
    (34, 'stress', '89338e1e-35aa-4d9b-a96f-82e10fe1a9b7', '2.1'),
    (35, 'PR', '89338e1e-35aa-4d9b-a96f-82e10fe1a9b7', '3.0'),

    (36, 'dev', 'c10a50d1-0b94-4d41-bc2b-9071d82543e7', '1.0'),
    (37, 'QA', 'c10a50d1-0b94-4d41-bc2b-9071d82543e7', '1.1'),
    (38, 'prod', 'c10a50d1-0b94-4d41-bc2b-9071d82543e7', '2.0'),
    (39, 'stress', 'c10a50d1-0b94-4d41-bc2b-9071d82543e7', '2.1'),
    (40, 'PR', 'c10a50d1-0b94-4d41-bc2b-9071d82543e7', '3.0'),

    (41, 'dev', 'ce06bcda-af6d-4b8b-8ea9-72f6b74e5a13', '1.0'),
    (42, 'QA', 'ce06bcda-af6d-4b8b-8ea9-72f6b74e5a13', '1.1'),
    (43, 'prod', 'ce06bcda-af6d-4b8b-8ea9-72f6b74e5a13', '2.0'),
    (44, 'stress', 'ce06bcda-af6d-4b8b-8ea9-72f6b74e5a13', '2.1'),
    (45, 'PR', 'ce06bcda-af6d-4b8b-8ea9-72f6b74e5a13', '3.0'),

    (46, 'dev', 'a7cf5db0-7ed0-45e6-8583-92694a4f8f1c', '1.0'),
    (47, 'QA', 'a7cf5db0-7ed0-45e6-8583-92694a4f8f1c', '1.1'),
    (48, 'prod', 'a7cf5db0-7ed0-45e6-8583-92694a4f8f1c', '2.0'),
    (49, 'stress', 'a7cf5db0-7ed0-45e6-8583-92694a4f8f1c', '2.1'),
    (50, 'PR', 'a7cf5db0-7ed0-45e6-8583-92694a4f8f1c', '3.0'),

    (51, 'dev', 'd6e35b15-e65b-42a4-aa7a-4c0579f24352', '1.0'),
    (52, 'QA', 'd6e35b15-e65b-42a4-aa7a-4c0579f24352', '1.1'),
    (53, 'prod', 'd6e35b15-e65b-42a4-aa7a-4c0579f24352', '2.0'),
    (54, 'stress', 'd6e35b15-e65b-42a4-aa7a-4c0579f24352', '2.1'),
    (55, 'PR', 'd6e35b15-e65b-42a4-aa7a-4c0579f24352', '3.0'),

    (56, 'dev', '4db25f69-0e16-49e8-927d-3a6b73c079c5', '1.0'),
    (57, 'QA', '4db25f69-0e16-49e8-927d-3a6b73c079c5', '1.1'),
    (58, 'prod', '4db25f69-0e16-49e8-927d-3a6b73c079c5', '2.0'),
    (59, 'stress', '4db25f69-0e16-49e8-927d-3a6b73c079c5', '2.1'),
    (60, 'PR', '4db25f69-0e16-49e8-927d-3a6b73c079c5', '3.0'),

    (61, 'dev', 'bc4a9b88-10b7-4d36-9b0a-1e30d37c8f38', '1.0'),
    (62, 'QA', 'bc4a9b88-10b7-4d36-9b0a-1e30d37c8f38', '1.1'),
    (63, 'prod', 'bc4a9b88-10b7-4d36-9b0a-1e30d37c8f38', '2.0'),
    (64, 'stress', 'bc4a9b88-10b7-4d36-9b0a-1e30d37c8f38', '2.1'),
    (65, 'PR', 'bc4a9b88-10b7-4d36-9b0a-1e30d37c8f38', '3.0'),

    (66, 'dev', '1d65f1ec-37b0-418a-bd14-48a850b90e02', '1.0'),
    (67, 'QA', '1d65f1ec-37b0-418a-bd14-48a850b90e02', '1.1'),
    (68, 'prod', '1d65f1ec-37b0-418a-bd14-48a850b90e02', '2.0'),
    (69, 'stress', '1d65f1ec-37b0-418a-bd14-48a850b90e02', '2.1'),
    (70, 'PR', '1d65f1ec-37b0-418a-bd14-48a850b90e02', '3.0'),

    (71, 'dev', '6b8d9a87-573d-4e10-84a6-f0343ee5ab95', '1.0'),
    (72, 'QA', '6b8d9a87-573d-4e10-84a6-f0343ee5ab95', '1.1'),
    (73, 'prod', '6b8d9a87-573d-4e10-84a6-f0343ee5ab95', '2.0'),
    (74, 'stress', '6b8d9a87-573d-4e10-84a6-f0343ee5ab95', '2.1'),
    (75, 'PR', '6b8d9a87-573d-4e10-84a6-f0343ee5ab95', '3.0'),

    (76, 'dev', 'f91378b0-0c21-47b3-ae0c-6c9d8bc14c5e', '1.0'),
    (77, 'QA', 'f91378b0-0c21-47b3-ae0c-6c9d8bc14c5e', '1.1'),
    (78, 'prod', 'f91378b0-0c21-47b3-ae0c-6c9d8bc14c5e', '2.0'),
    (79, 'stress', 'f91378b0-0c21-47b3-ae0c-6c9d8bc14c5e', '2.1'),
    (80, 'PR', 'f91378b0-0c21-47b3-ae0c-6c9d8bc14c5e', '3.0'),

    (81, 'dev', '76c2ee75-dbc6-4e2e-8584-8112a43f91a6', '1.0'),
    (82, 'QA', '76c2ee75-dbc6-4e2e-8584-8112a43f91a6', '1.1'),
    (83, 'prod', '76c2ee75-dbc6-4e2e-8584-8112a43f91a6', '2.0'),
    (84, 'stress', '76c2ee75-dbc6-4e2e-8584-8112a43f91a6', '2.1'),
    (85, 'PR', '76c2ee75-dbc6-4e2e-8584-8112a43f91a6', '3.0'),

    (86, 'dev', 'dab62d33-82da-4ab2-a1f2-168d1e85efb1', '1.0'),
    (87, 'QA', 'dab62d33-82da-4ab2-a1f2-168d1e85efb1', '1.1'),
    (88, 'prod', 'dab62d33-82da-4ab2-a1f2-168d1e85efb1', '2.0'),
    (89, 'stress', 'dab62d33-82da-4ab2-a1f2-168d1e85efb1', '2.1'),
    (90, 'PR', 'dab62d33-82da-4ab2-a1f2-168d1e85efb1', '3.0');


-- Insert data into Files table
-- file_name values follow the 'app_name.channel_name.version.tar' format.
INSERT INTO files (file_name, app_id, channel_id) VALUES
    ('UserMicroservice.1.dev.1.0.tar', '9a76fdbe-3f7c-4a59-8fa5-09e7f8c8e7d1', 1),
    ('UserMicroservice.2.QA.1.1.tar', '9a76fdbe-3f7c-4a59-8fa5-09e7f8c8e7d1', 2),
    ('UserMicroservice.3.prod.2.0.tar', '9a76fdbe-3f7c-4a59-8fa5-09e7f8c8e7d1', 3),
    ('UserMicroservice.4.stress.2.1.tar', '9a76fdbe-3f7c-4a59-8fa5-09e7f8c8e7d1', 4),
    ('UserMicroservice.5.PR.3.0.tar', '9a76fdbe-3f7c-4a59-8fa5-09e7f8c8e7d1', 5),

    ('PaymentMicroservice.6.dev.1.0.tar', '7ec9d29f-8b13-4d2c-b729-7f6893e2b4ab', 6),
    ('PaymentMicroservice.7.QA.1.1.tar', '7ec9d29f-8b13-4d2c-b729-7f6893e2b4ab', 7),
    ('PaymentMicroservice.8.prod.2.0.tar', '7ec9d29f-8b13-4d2c-b729-7f6893e2b4ab', 8),
    ('PaymentMicroservice.9.stress.2.1.tar', '7ec9d29f-8b13-4d2c-b729-7f6893e2b4ab', 9),
    ('PaymentMicroservice.10.PR.3.0.tar', '7ec9d29f-8b13-4d2c-b729-7f6893e2b4ab', 10),

    ('OrderMicroservice.11.dev.1.0.tar', '4f29e3e1-6e02-44ec-a244-9aa18d1c2955', 11),
    ('OrderMicroservice.12.QA.1.1.tar', '4f29e3e1-6e02-44ec-a244-9aa18d1c2955', 12),
    ('OrderMicroservice.13.prod.2.0.tar', '4f29e3e1-6e02-44ec-a244-9aa18d1c2955', 13),
    ('OrderMicroservice.14.stress.2.1.tar', '4f29e3e1-6e02-44ec-a244-9aa18d1c2955', 14),
    ('OrderMicroservice.15.PR.3.0.tar', '4f29e3e1-6e02-44ec-a244-9aa18d1c2955', 15),

    ('InventoryMicroservice.16.dev.1.0.tar', 'f4d508d9-8520-4652-98f2-13cbb5a58625', 16),
    ('InventoryMicroservice.17.QA.1.1.tar', 'f4d508d9-8520-4652-98f2-13cbb5a58625', 17),
    ('InventoryMicroservice.18.prod.2.0.tar', 'f4d508d9-8520-4652-98f2-13cbb5a58625', 18),
    ('InventoryMicroservice.19.stress.2.1.tar', 'f4d508d9-8520-4652-98f2-13cbb5a58625', 19),
    ('InventoryMicroservice.20.PR.3.0.tar', 'f4d508d9-8520-4652-98f2-13cbb5a58625', 20),

    ('NotificationMicroservice.21.dev.1.0.tar', '1f38cb34-119c-4b7e-9d27-3988bf55f51a', 21),
    ('NotificationMicroservice.22.QA.1.1.tar', '1f38cb34-119c-4b7e-9d27-3988bf55f51a', 22),
    ('NotificationMicroservice.23.prod.2.0.tar', '1f38cb34-119c-4b7e-9d27-3988bf55f51a', 23),
    ('NotificationMicroservice.24.stress.2.1.tar', '1f38cb34-119c-4b7e-9d27-3988bf55f51a', 24),
    ('NotificationMicroservice.25.PR.3.0.tar', '1f38cb34-119c-4b7e-9d27-3988bf55f51a', 25),

    ('AuthenticationMicroservice.dev.1.0.tar', 'b42db269-147c-49ab-804d-2f41f41b935a', 26),
    ('AuthenticationMicroservice.QA.1.1.tar', 'b42db269-147c-49ab-804d-2f41f41b935a', 27),
    ('AuthenticationMicroservice.prod.2.0.tar', 'b42db269-147c-49ab-804d-2f41f41b935a', 28),
    ('AuthenticationMicroservice.stress.2.1.tar', 'b42db269-147c-49ab-804d-2f41f41b935a', 29),
    ('AuthenticationMicroservice.PR.3.0.tar', 'b42db269-147c-49ab-804d-2f41f41b935a', 30),

    ('AnalyticsMicroservice.dev.1.0.tar', '89338e1e-35aa-4d9b-a96f-82e10fe1a9b7', 31),
    ('AnalyticsMicroservice.QA.1.1.tar', '89338e1e-35aa-4d9b-a96f-82e10fe1a9b7', 32),
    ('AnalyticsMicroservice.prod.2.0.tar', '89338e1e-35aa-4d9b-a96f-82e10fe1a9b7', 33),
    ('AnalyticsMicroservice.stress.2.1.tar', '89338e1e-35aa-4d9b-a96f-82e10fe1a9b7', 34),
    ('AnalyticsMicroservice.PR.3.0.tar', '89338e1e-35aa-4d9b-a96f-82e10fe1a9b7', 35),

    ('SearchMicroservice.dev.1.0.tar', 'c10a50d1-0b94-4d41-bc2b-9071d82543e7', 36),
    ('SearchMicroservice.QA.1.1.tar', 'c10a50d1-0b94-4d41-bc2b-9071d82543e7', 37),
    ('SearchMicroservice.prod.2.0.tar', 'c10a50d1-0b94-4d41-bc2b-9071d82543e7', 38),
    ('SearchMicroservice.stress.2.1.tar', 'c10a50d1-0b94-4d41-bc2b-9071d82543e7', 39),
    ('SearchMicroservice.PR.3.0.tar', 'c10a50d1-0b94-4d41-bc2b-9071d82543e7', 40),

    ('MessagingMicroservice.dev.1.0.tar', 'ce06bcda-af6d-4b8b-8ea9-72f6b74e5a13', 41),
    ('MessagingMicroservice.QA.1.1.tar', 'ce06bcda-af6d-4b8b-8ea9-72f6b74e5a13', 42),
    ('MessagingMicroservice.prod.2.0.tar', 'ce06bcda-af6d-4b8b-8ea9-72f6b74e5a13', 43),
    ('MessagingMicroservice.stress.2.1.tar', 'ce06bcda-af6d-4b8b-8ea9-72f6b74e5a13', 44),
    ('MessagingMicroservice.PR.3.0.tar', 'ce06bcda-af6d-4b8b-8ea9-72f6b74e5a13', 45),

    ('RecommendationMicroservice.dev.1.0.tar', 'a7cf5db0-7ed0-45e6-8583-92694a4f8f1c', 46),
    ('RecommendationMicroservice.QA.1.1.tar', 'a7cf5db0-7ed0-45e6-8583-92694a4f8f1c', 47),
    ('RecommendationMicroservice.prod.2.0.tar', 'a7cf5db0-7ed0-45e6-8583-92694a4f8f1c', 48),
    ('RecommendationMicroservice.stress.2.1.tar', 'a7cf5db0-7ed0-45e6-8583-92694a4f8f1c', 49),
    ('RecommendationMicroservice.PR.3.0.tar', 'a7cf5db0-7ed0-45e6-8583-92694a4f8f1c', 50),

    ('LoggingMicroservice.dev.1.0.tar', 'd6e35b15-e65b-42a4-aa7a-4c0579f24352', 51),
    ('LoggingMicroservice.QA.1.1.tar', 'd6e35b15-e65b-42a4-aa7a-4c0579f24352', 52),
    ('LoggingMicroservice.prod.2.0.tar', 'd6e35b15-e65b-42a4-aa7a-4c0579f24352', 53),
    ('LoggingMicroservice.stress.2.1.tar', 'd6e35b15-e65b-42a4-aa7a-4c0579f24352', 54),
    ('LoggingMicroservice.PR.3.0.tar', 'd6e35b15-e65b-42a4-aa7a-4c0579f24352', 55),

    ('ReportingService.dev.1.0.tar', '4db25f69-0e16-49e8-927d-3a6b73c079c5', 56),
    ('ReportingService.QA.1.1.tar', '4db25f69-0e16-49e8-927d-3a6b73c079c5', 57),
    ('ReportingService.prod.2.0.tar', '4db25f69-0e16-49e8-927d-3a6b73c079c5', 58),
    ('ReportingService.stress.2.1.tar', '4db25f69-0e16-49e8-927d-3a6b73c079c5', 59),
    ('ReportingService.PR.3.0.tar', '4db25f69-0e16-49e8-927d-3a6b73c079c5', 60),

    ('CustomerFeedbackService.dev.1.0.tar', 'bc4a9b88-10b7-4d36-9b0a-1e30d37c8f38', 61),
    ('CustomerFeedbackService.QA.1.1.tar', 'bc4a9b88-10b7-4d36-9b0a-1e30d37c8f38', 62),
    ('CustomerFeedbackService.prod.2.0.tar', 'bc4a9b88-10b7-4d36-9b0a-1e30d37c8f38', 63),
    ('CustomerFeedbackService.stress.2.1.tar', 'bc4a9b88-10b7-4d36-9b0a-1e30d37c8f38', 64),
    ('CustomerFeedbackService.PR.3.0.tar', 'bc4a9b88-10b7-4d36-9b0a-1e30d37c8f38', 65),

    ('EventSchedulerService.dev.1.0.tar', '1d65f1ec-37b0-418a-bd14-48a850b90e02', 66),
    ('EventSchedulerService.QA.1.1.tar', '1d65f1ec-37b0-418a-bd14-48a850b90e02', 67),
    ('EventSchedulerService.prod.2.0.tar', '1d65f1ec-37b0-418a-bd14-48a850b90e02', 68),
    ('EventSchedulerService.stress.2.1.tar', '1d65f1ec-37b0-418a-bd14-48a850b90e02', 69),
    ('EventSchedulerService.PR.3.0.tar', '1d65f1ec-37b0-418a-bd14-48a850b90e02', 70),

    ('GeoLocationService.dev.1.0.tar', '6b8d9a87-573d-4e10-84a6-f0343ee5ab95', 71),
    ('GeoLocationService.QA.1.1.tar', '6b8d9a87-573d-4e10-84a6-f0343ee5ab95', 72),
    ('GeoLocationService.prod.2.0.tar', '6b8d9a87-573d-4e10-84a6-f0343ee5ab95', 73),
    ('GeoLocationService.stress.2.1.tar', '6b8d9a87-573d-4e10-84a6-f0343ee5ab95', 74),
    ('GeoLocationService.PR.3.0.tar', '6b8d9a87-573d-4e10-84a6-f0343ee5ab95', 75),

    ('SubscriptionService.dev.1.0.tar', 'f91378b0-0c21-47b3-ae0c-6c9d8bc14c5e', 76),
    ('SubscriptionService.QA.1.1.tar', 'f91378b0-0c21-47b3-ae0c-6c9d8bc14c5e', 77),
    ('SubscriptionService.prod.2.0.tar', 'f91378b0-0c21-47b3-ae0c-6c9d8bc14c5e', 78),
    ('SubscriptionService.stress.2.1.tar', 'f91378b0-0c21-47b3-ae0c-6c9d8bc14c5e', 79),
    ('SubscriptionService.PR.3.0.tar', 'f91378b0-0c21-47b3-ae0c-6c9d8bc14c5e', 80),

    ('ShippingService.81/dev.1.0.tar', '76c2ee75-dbc6-4e2e-8584-8112a43f91a6', 81),
    ('ShippingService.82/QA.1.1.tar', '76c2ee75-dbc6-4e2e-8584-8112a43f91a6', 82),
    ('ShippingService.83/prod.2.0.tar', '76c2ee75-dbc6-4e2e-8584-8112a43f91a6', 83),
    ('ShippingService.84/stress.2.1.tar', '76c2ee75-dbc6-4e2e-8584-8112a43f91a6', 84),
    ('ShippingService.85/PR.3.0.tar', '76c2ee75-dbc6-4e2e-8584-8112a43f91a6', 85),

    ('RecommendationEngineService.86/dev.1.0.tar', 'dab62d33-82da-4ab2-a1f2-168d1e85efb1', 86),
    ('RecommendationEngineService.87/QA.1.1.tar', 'dab62d33-82da-4ab2-a1f2-168d1e85efb1', 87),
    ('RecommendationEngineService.88/prod.2.0.tar', 'dab62d33-82da-4ab2-a1f2-168d1e85efb1', 88),
    ('RecommendationEngineService.89/stress.2.1.tar', 'dab62d33-82da-4ab2-a1f2-168d1e85efb1', 89),
    ('RecommendationEngineService.90/PR.3.0.tar', 'dab62d33-82da-4ab2-a1f2-168d1e85efb1', 90);