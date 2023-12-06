/*
  Warnings:

  - Added the required column `fechaRegistroWeb` to the `Registro` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `registro` ADD COLUMN `fechaRegistroWeb` DATETIME(3) NOT NULL;
