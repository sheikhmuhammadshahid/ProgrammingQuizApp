--
-- Class EventDetail as table eventdetail
--

CREATE TABLE "eventdetail" (
  "id" serial,
  "eventId" integer NOT NULL,
  "teamId" integer NOT NULL
);
ALTER TABLE ONLY "eventdetail"
ADD CONSTRAINT eventdetail_pkey PRIMARY KEY (id);
--
-- Class EventModel as table eventmodel
--

CREATE TABLE "eventmodel" (
  "id" serial,
  "date" timestamp without time zone,
  "type" text NOT NULL,
  "tTeams" integer NOT NULL,
  "status" text NOT NULL
);
ALTER TABLE ONLY "eventmodel"
ADD CONSTRAINT eventmodel_pkey PRIMARY KEY (id);
--
-- Class MemberModel as table membertable
--

CREATE TABLE "membertable" (
  "id" serial,
  "name" text NOT NULL,
  "image" text NOT NULL,
  "phoneNo" text NOT NULL,
  "aridNo" text NOT NULL,
  "semester" text NOT NULL
);
ALTER TABLE ONLY "membertable"
ADD CONSTRAINT membertable_pkey PRIMARY KEY (id);
--
-- Class OnGoingEvent as table ongoingevent
--

CREATE TABLE "ongoingevent" (
  "id" serial,
  "question" json,
  "eventId" integer NOT NULL
);
ALTER TABLE ONLY "ongoingevent"
ADD CONSTRAINT ongoingevent_pkey PRIMARY KEY (id);
--
-- Class Question as table question
--

CREATE TABLE "question" (
  "id" serial,
  "ques" text NOT NULL,
  "opt1" text NOT NULL,
  "opt2" text NOT NULL,
  "opt3" text NOT NULL,
  "opt4" text NOT NULL,
  "answer" text NOT NULL,
  "type" text NOT NULL,
  "eventId" integer NOT NULL
);
ALTER TABLE ONLY "question"
ADD CONSTRAINT question_pkey PRIMARY KEY (id);
--
-- Class TeamInfoModel as table teaminfotable
--

CREATE TABLE "teaminfotable" (
  "id" serial,
  "teamId" integer NOT NULL,
  "memberId" integer NOT NULL
);
ALTER TABLE ONLY "teaminfotable"
ADD CONSTRAINT teaminfotable_pkey PRIMARY KEY (id);
--
-- Class TeamModel as table teamtable
--

CREATE TABLE "teamtable" (
  "id" serial,
  "teamName" text NOT NULL,
  "teamType" text NOT NULL,
  "scores" integer NOT NULL,
  "totalMembers" integer NOT NULL,
  "buzzerRound" integer NOT NULL,
  "mcqRound" integer NOT NULL,
  "rapidRound" integer NOT NULL,
  "buzzerWrong" integer NOT NULL
);
ALTER TABLE ONLY "teamtable"
ADD CONSTRAINT teamtable_pkey PRIMARY KEY (id);