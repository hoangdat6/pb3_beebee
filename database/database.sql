create table categories
(
    id       int auto_increment
        primary key,
    name     varchar(50)  null,
    img_path varchar(255) null
);

create table products
(
    id               bigint auto_increment
        primary key,
    name             varchar(500)  null,
    description      varchar(2048) null,
    product_img_path varchar(1024) null,
    category_id      int           null,
    seller_id        bigint        null,
    created_at       date          null,
    discount         float         null,
    price            float         null,
    constraint products_ibfk_1
        foreign key (category_id) references categories (id)
);

create index category_id
    on products (category_id);

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
    deleted    bit  default b'0'                null,
    avatar     varchar(1024)                    null
);

create table shopping_cart
(
    id         bigint auto_increment
        primary key,
    user_id    bigint   null,
    created_at datetime null,
    constraint shopping_cart_ibfk_1
        foreign key (user_id) references users (id)
);

create index user_id
    on shopping_cart (user_id);

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

create table variation
(
    id         bigint auto_increment
        primary key,
    product_id bigint      null,
    name       varchar(50) null,
    constraint variation_products_id_fk
        foreign key (product_id) references products (id)
);

create table variation_option
(
    id           bigint auto_increment
        primary key,
    variation_id bigint      null,
    value        varchar(50) null,
    constraint variation_option_ibfk_1
        foreign key (variation_id) references variation (id)
);

create table product_item
(
    id               bigint auto_increment
        primary key,
    product_id       bigint        null,
    SKU              varchar(25)   null,
    product_img_path varchar(1024) null,
    variation1       bigint        null,
    variation2       bigint        null,
    qty_in_stock     int           null,
    price            int           null,
    constraint product_item_ibfk_1
        foreign key (variation1) references variation_option (id),
    constraint product_item_ibfk_2
        foreign key (variation2) references variation_option (id),
    constraint product_item_ibfk_3
        foreign key (product_id) references products (id)
);

create index product_id
    on product_item (product_id);

create index variation1
    on product_item (variation1);

create index variation2
    on product_item (variation2);

create table shopping_cart_item
(
    id              bigint auto_increment
        primary key,
    cart_id         bigint   null,
    product_item_id bigint   null,
    qty             int      null,
    created_at      datetime null,
    constraint shopping_cart_item_ibfk_1
        foreign key (product_item_id) references product_item (id)
);

create index product_item_id
    on shopping_cart_item (product_item_id);

create index variation_id
    on variation_option (variation_id);

