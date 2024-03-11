
create table roles
(
    id   bigint auto_increment
        primary key,
    role varchar(25) null
);

create table users
(
    id         bigint auto_increment
        primary key,
    username   varchar(255)                     null,
    password   varchar(255)                     null,
    email      varchar(30)                      null,
    phone      varchar(12)                      null,
    created_at timestamp                        null,
    gender     enum ('male', 'female', 'other') null,
    dob        date default '1990-01-01'        null,
    deleted    bit  default b'0'                null
);

create table user_role
(
    user_id bigint null,
    role_id bigint null,
    constraint user_role_ibfk_1
        foreign key (role_id) references roles (id),
    constraint user_role_ibfk_2
        foreign key (user_id) references users (id)
);

create index role_id
    on user_role (role_id);

create index user_id
    on user_role (user_id);

