-- CreateTable
CREATE TABLE `Registro` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `matricula` VARCHAR(191) NOT NULL,
    `nombre` VARCHAR(191) NOT NULL,
    `grupo` VARCHAR(191) NOT NULL,
    `materia` VARCHAR(191) NOT NULL,
    `carrera` VARCHAR(191) NOT NULL,
    `nombreLaboratorio` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
