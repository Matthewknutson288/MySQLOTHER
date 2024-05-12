-- Drop Tables if they exist
DROP TABLE IF EXISTS Projects;
DROP TABLE IF EXISTS Materials;
DROP TABLE IF EXISTS Tools;
DROP TABLE IF EXISTS Steps;
DROP TABLE IF EXISTS Users;

-- Create Tables
CREATE TABLE Projects (
    ProjectID INT AUTO_INCREMENT,
    Title VARCHAR(255),
    Description TEXT,
    UserID INT,
    PRIMARY KEY (ProjectID)
);
CREATE TABLE Materials (
    MaterialID INT AUTO_INCREMENT,
    Name VARCHAR(255),
    Quantity INT,
    ProjectID INT,
    PRIMARY KEY (MaterialID)
);

CREATE TABLE Tools (
    ToolID INT AUTO_INCREMENT,
    Name VARCHAR(255),
    ProjectID INT,
    PRIMARY KEY (ToolID)
);

CREATE TABLE Steps (
    StepID INT AUTO_INCREMENT,
    Description TEXT,
    ProjectID INT,
    PRIMARY KEY (StepID)
);

CREATE TABLE Users (
    UserID INT AUTO_INCREMENT,
    Username VARCHAR(255),
    Email VARCHAR(255),
    PRIMARY KEY (UserID)
);