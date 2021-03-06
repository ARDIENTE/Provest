# --- !Ups

create table "ACCOUNT" ("ID" UUID NOT NULL PRIMARY KEY,"ACCOUNT_NAME" VARCHAR NOT NULL,"PASSWORD" VARCHAR NOT NULL,"ADDRESS" VARCHAR NOT NULL,"MAP_URL" VARCHAR NOT NULL,"IMAGE_PATH" VARCHAR NOT NULL,"CREATED_AT" timestamp NOT NULL);

create table "AMENITIES_AND_FACILITY" ("ID" UUID NOT NULL PRIMARY KEY,"PROJECT_ID" UUID NOT NULL,"SUB_PROJECT_ID" UUID NOT NULL,"IMAGE_PATH" VARCHAR NOT NULL,"TITLE" VARCHAR NOT NULL,"DESCRIPTION" VARCHAR NOT NULL,"CREATED_AT" timestamp NOT NULL);

create table "CONSTRUCTION_UPDATE" ("ID" UUID NOT NULL PRIMARY KEY,"PROJECT_ID" UUID NOT NULL,"SUB_PROJECT_ID" UUID NOT NULL,"IMAGE_PATH" VARCHAR NOT NULL,"TITLE" VARCHAR NOT NULL,"CREATED_AT" timestamp NOT NULL);

create table "CONTACT_PROJECT" ("ID" UUID NOT NULL PRIMARY KEY,"PROJECT_ID" UUID NOT NULL,"SUB_PROJECT_ID" UUID NOT NULL,"NAME" VARCHAR NOT NULL,"POSITION" VARCHAR NOT NULL,"NUMBER" VARCHAR NOT NULL,"CREATED_AT" timestamp NOT NULL);

create table "EMAIL" ("ID" UUID NOT NULL PRIMARY KEY,"TITLE" VARCHAR NOT NULL,"EMAIL" VARCHAR NOT NULL,"CREATED_AT" timestamp NOT NULL);

create table "LOCATION_AND_VICINITY" ("ID" UUID NOT NULL PRIMARY KEY,"PROJECT_ID" UUID NOT NULL,"SUB_PROJECT_ID" UUID NOT NULL,"NAME" VARCHAR NOT NULL,"DESCRIPTION" VARCHAR NOT NULL,"CREATED_AT" timestamp NOT NULL);

create table "OVERVIEW" ("ID" UUID NOT NULL PRIMARY KEY,"PROJECT_ID" UUID NOT NULL,"SUB_PROJECT_ID" UUID NOT NULL,"TOTAL_LAND_AREA" DOUBLE PRECISION NOT NULL,"PHASE" INTEGER NOT NULL,"STATUS" VARCHAR NOT NULL,"ADDRESS" VARCHAR NOT NULL,"MAP_URL" VARCHAR NOT NULL,"CREATED_AT" timestamp NOT NULL);

create table "PHOTO_AND_VIDEO_GALLERY" ("ID" UUID NOT NULL PRIMARY KEY,"PROJECT_ID" UUID NOT NULL,"SUB_PROJECT_ID" UUID NOT NULL,"IS_VIDEO" BOOLEAN NOT NULL,"IMAGE_PATH" VARCHAR NOT NULL,"TITLE" VARCHAR NOT NULL,"CREATED_AT" timestamp NOT NULL);

create table "PRESPECTIVE_AND_FLOOR_PLAN" ("ID" UUID NOT NULL PRIMARY KEY,"PROJECT_ID" UUID NOT NULL,"SUB_PROJECT_ID" UUID NOT NULL,"IMAGE_PATH" VARCHAR NOT NULL,"TITLE" VARCHAR NOT NULL,"CREATED_AT" timestamp NOT NULL);

create table "PROJECT" ("ID" UUID NOT NULL PRIMARY KEY,"NAME" VARCHAR NOT NULL);

create table "SALES_AND_MARKETING" ("ID" UUID NOT NULL PRIMARY KEY,"TITLE" VARCHAR NOT NULL,"NUMBER" VARCHAR NOT NULL,"CREATED_AT" timestamp NOT NULL);

create table "SOCIAL_MEDIA" ("ID" UUID NOT NULL PRIMARY KEY,"TITLE" VARCHAR NOT NULL,"URL" VARCHAR NOT NULL);

create table "SUB_PROJECT" ("ID" UUID NOT NULL PRIMARY KEY,"NAME" VARCHAR NOT NULL);



# --- !Downs

drop table "SUB_PROJECT";
drop table "SOCIAL_MEDIA";
drop table "SALES_AND_MARKETING";
drop table "PROJECT";
drop table "PRESPECTIVE_AND_FLOOR_PLAN";
drop table "PHOTO_AND_VIDEO_GALLERY";
drop table "OVERVIEW";
drop table "LOCATION_AND_VICINITY";
drop table "EMAIL";
drop table "CONTACT_PROJECT";
drop table "CONSTRUCTION_UPDATE";
drop table "AMENITIES_AND_FACILITY";
drop table "ACCOUNT";
