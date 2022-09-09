/*
  Warnings:

  - The `liked` column on the `PostDB` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "PostDB" DROP COLUMN "liked",
ADD COLUMN     "liked" BOOLEAN NOT NULL DEFAULT false;
