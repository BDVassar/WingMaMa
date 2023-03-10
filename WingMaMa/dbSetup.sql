CREATE TABLE
    IF NOT EXISTS accounts(
        id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
        name varchar(255) COMMENT 'User Name',
        email varchar(255) COMMENT 'User Email',
        picture varchar(255) COMMENT 'User Picture'
    ) default charset utf8 COMMENT '';

CREATE TABLE
    child(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'primary key',
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
        name VARCHAR(255) NOT NULL COMMENT 'Childs Name',
        age INT NOT NULL COMMENT 'Childs Age',
        gender BOOLEAN COMMENT 'Childs Gender'
    ) DEFAULT charset utf8 COMMENT '';

CREATE TABLE
    feeding(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'primary key',
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        lastFeeding DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Feeding',
        startTime CURRENT_TIME COMMENT 'Start Feeding',
        endTime TIME COMMENT 'End Feeding',
        FOREIGN KEY (childId) REFERENCES child (id) ON DELETE CASCADE
    ) DEFAULT charset utf8 COMMENT '';