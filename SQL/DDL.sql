 create table book
    (
    ISBN    varchar(13),
    title   varchar(255),
    author  varchar(255),
    genre   varchar(255),
    primary key (ISBN)
    );

create table account
    (
    username            varchar(255),
    password	        varchar(255),
    name                varchar(255),
    credit_card_num     numeric(16,0),
    street_address      varchar(255),
    zip_code            varchar(7),
    city                varchar(255),
    country             varchar(255),
    is_owner            boolean,
    primary key (username)
    );

create table publisher
    (
    email               varchar(255),
    name                varchar(255),
    address             varchar(255),
    phone               varchar(255),
    banking_information varchar(255),
    primary key (email)  
    );

create table bookstore
    (
    store_id        varchar(255),
    name            varchar(255),
    address         varchar(255),
    phone_num       varchar(255),
    primary key (store_id)
    );

create table published
    (
    email           varchar(255),
    ISBN            varchar(13),
    primary key (email, ISBN),
    foreign key (ISBN) references book,
    foreign key (email) references publisher
    );

create table checkout
    (
    ISBN            varchar(13),
    username        varchar(255),
    primary key (ISBN, username),
    foreign key (username) references account,
    foreign key (ISBN) references book
    );

create table account_order 
    (
    order_num       varchar(255),
    store_id        varchar(255),
    username        varchar(255),
    ISBN            varchar(13),
    primary key (order_num, store_id),
    foreign key (username) references account,
    foreign key (ISBN) references book,
    foreign key (store_id) references bookstore
    );

create table collection 
    (
    store_id        varchar(255),
    ISBN            varchar(13),
    stock           numeric(5,0),
    price           numeric(16,0),
    primary key (ISBN, store_id),
    foreign key (ISBN) references book,
    foreign key (store_id) references bookstore
    );

create table seller
    (
    email           varchar(255),
    store_id        varchar(255),
    primary key(email, store_id),
    foreign key (email) references publisher,
    foreign key (store_id) references bookstore
    );