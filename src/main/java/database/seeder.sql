USE adlister_db;

TRUNCATE users;
TRUNCATE ads;

insert into users (id, name, email, password) values (1, 'Charo Ffoulkes', 'cffoulkes0@icq.com', 'tCyY6BHLaV6J');
insert into users (id, name, email, password) values (2, 'Baillie Ranfield', 'branfield1@usnews.com', 'zEKkCbNab');
insert into users (id, name, email, password) values (3, 'Jody Bullerwell', 'jbullerwell2@barnesandnoble.com', 'JHE4OaBY');
insert into users (id, name, email, password) values (4, 'Luise Calven', 'lcalven3@bloomberg.com', 'lDiD1pxI');
insert into users (id, name, email, password) values (5, 'Miles Simister', 'msimister4@yolasite.com', 'DuChjg8hLXw');

INSERT INTO `ads` (`id`, `user_id`, `title`, `description`) VALUES (1, 1, 'Aliquid aliquid quas corrupti odit reprehenderit vero.', 'Eos sunt amet laboriosam. Vitae impedit veniam distinctio porro cum et ratione. Odit voluptatibus facilis maxime consectetur quia explicabo. Eveniet quibusdam dolorem autem.');
INSERT INTO `ads` (`id`, `user_id`, `title`, `description`) VALUES (2, 2, 'Tempore maxime et consequuntur velit.', 'Laboriosam quis nihil in ut architecto sed quis. Qui qui exercitationem corporis. Aut nisi fugit omnis laudantium voluptate eos natus et.');
INSERT INTO `ads` (`id`, `user_id`, `title`, `description`) VALUES (3, 3, 'Et amet cumque esse recusandae accusamus.', 'Et architecto sint quos tenetur. Optio unde similique sunt ut. Ut animi aliquid iure non molestias. Eius doloribus ipsa qui dolores.');
INSERT INTO `ads` (`id`, `user_id`, `title`, `description`) VALUES (4, 4, 'Ut quasi omnis nemo laborum dolores natus ut.', 'Autem provident tempora dolores alias. Ut libero sint ipsa excepturi aut. Sed nam in sed et dolorum cum quod. Doloremque facere velit ut.');
INSERT INTO `ads` (`id`, `user_id`, `title`, `description`) VALUES (5, 5, 'Ea aut eligendi aliquam quis quo aut.', 'Aperiam eligendi culpa in quae voluptatibus aspernatur deleniti accusamus. Voluptates quia laboriosam aliquid aut ipsum. Totam unde delectus sed dolorum animi odio et cumque.');

