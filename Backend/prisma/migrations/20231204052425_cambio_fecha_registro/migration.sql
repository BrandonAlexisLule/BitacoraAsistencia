/*
  Warnings:

  - You are about to drop the column `createdAt` on the `registro` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `registro` DROP COLUMN `createdAt`,
    ADD COLUMN `fechaRegistroApp` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `fechaRegistroWeb` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3);
