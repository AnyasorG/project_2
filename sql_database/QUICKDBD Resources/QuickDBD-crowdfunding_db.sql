-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/xLERwD
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(250)   NOT NULL,
    "description" VARCHAR(250)   NOT NULL,
    "goal" INT   NOT NULL,
    "pledged" INT   NOT NULL,
    "outcome" VARCHAR(250)   NOT NULL,
    "backers_out" INT   NOT NULL,
    "country" VARCHAR(250)   NOT NULL,
    "currency" VARCHAR(250)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(250)   NOT NULL,
    "subcategory_id" VARCHAR(250)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "categroy_id" VARCHAR(250)   NOT NULL,
    "category" VARCHAR(250)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "categroy_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(250)   NOT NULL,
    "subcatgory_name" VARCHAR(250)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contact" (
    "contact_id" VARCHAR(250)   NOT NULL,
    "first_name" VARCHAR(250)   NOT NULL,
    "last_name" VARCHAR(250)   NOT NULL,
    "email" VARCHAR(250)   NOT NULL,
    CONSTRAINT "pk_contact" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

ALTER TABLE "category" ADD CONSTRAINT "fk_category_categroy_id" FOREIGN KEY("categroy_id")
REFERENCES "Campaign" ("category_id");

ALTER TABLE "contact" ADD CONSTRAINT "fk_contact_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");

