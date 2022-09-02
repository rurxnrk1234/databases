
CREATE TABLE city_me
(
  ID          INT(200)     NOT NULL COMMENT '아이디',
  Name        VARCHAR(200) NULL     COMMENT '이름',
  CountryCode VARCHAR(200) NULL     COMMENT '국가 코드',
  District    VARCHAR(200) NULL     COMMENT '지구',
  Population  INT(200)     NULL     COMMENT '인구',
  PRIMARY KEY (ID)
) COMMENT '도시';

CREATE TABLE country_me
(
  Code           VARCHAR(200)  NOT NULL COMMENT '암호',
  Name           VARCHAR(200)  NULL     COMMENT '이름',
  Continent      ENUM(200)     NULL     COMMENT '대륙',
  Region         VARCHAR(200)  NULL     COMMENT '지역',
  SurfaceArea    DECIMAL(200)  NULL     COMMENT '면적',
  IndepYear      SMALLINT(200) NULL     COMMENT '독립',
  Population     INT(200)      NULL     COMMENT '인구',
  LifeExpectancy DECIMAL(200)  NULL     COMMENT '수명',
  GNP            DECIMAL(200)  NULL     COMMENT '국민총소득',
  GNPOld         DECIMAL(200)  NULL     COMMENT '과거국민총소득',
  LocalName      VARCHAR(200)  NULL     COMMENT '지역명',
  GovernmentForm VARCHAR(200)  NULL     COMMENT '정부형태',
  HeadOfState    VARCHAR(200)  NULL     COMMENT '국가원수',
  Capital        INT(200)      NULL     COMMENT '수도',
  Code2          VARCHAR(200)  NULL     COMMENT '암호2',
  PRIMARY KEY (Code)
);

CREATE TABLE countrylanguage_me
(
  ContryCode VARCHAR(200) NOT NULL COMMENT '국가코드',
  Language   VARCHAR(200) NULL     COMMENT '언어',
  IsOfficial ENUM(200)    NULL     COMMENT '공용어',
  Percentage DECIMAL(200) NULL     COMMENT '백분율',
  Code       VARCHAR(200) NOT NULL COMMENT '암호',
  ID         INT(200)     NOT NULL COMMENT '아이디',
  PRIMARY KEY (ContryCode)
);

ALTER TABLE countrylanguage_me
  ADD CONSTRAINT FK_country_me_TO_countrylanguage_me
    FOREIGN KEY (Code)
    REFERENCES country_me (Code);

ALTER TABLE countrylanguage_me
  ADD CONSTRAINT FK_city_me_TO_countrylanguage_me
    FOREIGN KEY (ID)
    REFERENCES city_me (ID);
