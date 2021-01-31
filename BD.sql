CREATE TABLE "Trable" (
	"id" serial NOT NULL,
	"Geo" serial NOT NULL,
	"dat" serial NOT NULL,
	"info" serial(255) NOT NULL,
	"Kontact_id" serial NOT NULL,
	"Status_id" serial NOT NULL,
	CONSTRAINT "Trable_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Kontact" (
	"id" serial NOT NULL,
	"name" serial(255) NOT NULL,
	"phone" serial(255) NOT NULL,
	"mail" serial(255) NOT NULL,
	CONSTRAINT "Kontact_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Status_log" (
	"Id" serial NOT NULL,
	"Status" serial(255) NOT NULL,
	CONSTRAINT "Status_log_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "history" (
	"id" serial NOT NULL,
	"dat" serial NOT NULL,
	"status" serial(255) NOT NULL,
	"id_trable" serial(255) NOT NULL,
	"human_id" serial(255) NOT NULL,
	"human_contact" serial(255) NOT NULL,
	CONSTRAINT "history_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "human" (
	"id" serial NOT NULL,
	"FIO" serial(255) NOT NULL,
	CONSTRAINT "human_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Trable" ADD CONSTRAINT "Trable_fk0" FOREIGN KEY ("id") REFERENCES "Trable"("id");
ALTER TABLE "Trable" ADD CONSTRAINT "Trable_fk1" FOREIGN KEY ("Kontact_id") REFERENCES "Kontact"("id");
ALTER TABLE "Trable" ADD CONSTRAINT "Trable_fk2" FOREIGN KEY ("Status_id") REFERENCES "Status_log"("Id");



ALTER TABLE "history" ADD CONSTRAINT "history_fk0" FOREIGN KEY ("id") REFERENCES "Trable"("id");
ALTER TABLE "history" ADD CONSTRAINT "history_fk1" FOREIGN KEY ("human_id") REFERENCES "human"("id");


