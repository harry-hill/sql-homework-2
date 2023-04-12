-- Movie Theater Create Table Statements


-- Customer Table for Movie Theater
create table customers(
    customer_id SERIAL primary key,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    contact_number INTEGER,
);

-- Movies Table for Movie Theater
create table movies(
    movie_id SERIAL primary key,
    movie_name VARCHAR(100)
);

-- Tickets Table for Movie Theater
create table tickets(
    ticket_id SERIAL primary key,
    ticket_date DATE default CURRENT_DATE,
    customer_id INTEGER not null,
    movie_id INTEGER not null,
    foreign key(customer_id) references customers(customer_id),
    foreign key(movie_id) references movies(movie_id)
)

-- Inventory Table for Movie Theater
create table inventory(
    upc SERIAL primary key,
    product_amount INTEGER
)

-- Concessions Table for Movie Theater
create table concessions(
    item_id SERIAL primary_key,
    item_name VARCHAR(100),
    price NUMERIC(5,2),
    upc INTEGER not null,
    foreign key(upc) references inventory(upc)
);