/*
  Warnings:

  - You are about to drop the column `img_url` on the `PostDB` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "PostDB" DROP COLUMN "img_url",
ADD COLUMN     "liked" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "media_type" TEXT,
ADD COLUMN     "media_url" TEXT;
