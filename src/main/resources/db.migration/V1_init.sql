create table users (
    id bigserial,
    username varchar (30) not null unique,
    password varchar (80) not null,
    email varchar (50) unique,
    primary key (id)
);

create table authority (
    id serial,
    name varchar (50) not null ,
    primary key(id)
);

create table users_roles(
    user_id bigint not null,
    primary key (user_id, role_id),
    foreign key(user_id) references users (id),
    foreign key (authority_id) references authority(id)
);

insert into authority (name)
values
    ('ROLE_USER'), ('ROLE_ADMIN');

insert into users (username, password, email)
values
    ('user', '$2y$12$4PymMKJ8iCaVS7F29Lpysee6UreSDT1g8DeDv6er8XbrvWyiimvdu', 'user@gmail.com');

insert into users_roles(user_id, role_id)
values
    (1,1);