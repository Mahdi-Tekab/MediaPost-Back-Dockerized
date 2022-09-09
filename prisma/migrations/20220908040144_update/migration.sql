-- AlterTable
ALTER TABLE "PostDB" ADD COLUMN     "img_url" TEXT,
ALTER COLUMN "like" DROP DEFAULT,
ALTER COLUMN "comments" DROP DEFAULT;
DROP SEQUENCE "PostDB_like_seq";
DROP SEQUENCE "PostDB_comments_seq";
