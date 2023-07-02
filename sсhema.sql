CREATE DATABASE yeti
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general;
USE yeti;

CREATE TABLE IF NOT EXISTS `users` (
    `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `username` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    `contact` text NOT NULL,
    `user_id` int(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS `lots` (
    `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `lot_name` varchar(255) NOT NULL,
    `description` text NOT NULL,
    `image` text NOT NULL,
    `category` int(11) NOT NULL,
    `start_price` int(11) NOT NULL,
    `bet_step` int(11) NOT NULL,
    `date_created` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `end_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `user_id` int(11) NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES users (`id`)
)

