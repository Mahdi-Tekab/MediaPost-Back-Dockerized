-- CreateTable
CREATE TABLE "PostDB" (
    "id" SERIAL NOT NULL,
    "desc" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "posteddBy" TEXT NOT NULL DEFAULT 'Google',
    "like" SERIAL NOT NULL,
    "comments" SERIAL NOT NULL,

    CONSTRAINT "PostDB_pkey" PRIMARY KEY ("id")
);
