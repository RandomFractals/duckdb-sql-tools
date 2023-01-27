/**
* Drop tables.
*/
drop table if exists albums;
drop table if exists artists;
drop table if exists customers;
drop table if exists employees;
drop table if exists genres;
drop table if exists invoices;
drop table if exists invoice_items;
drop table if exists media_types;
drop table if exists playlists;
drop table if exists playlist_track;
drop table if exists tracks;

/**
* Create tables.
*/
create table albums
(
  album_id integer not null,
  title nvarchar(160) not null,
  artist_id integer not null,
  constraint pk_album primary key (album_id)
);

create table artists
(
  artist_id integer not null,
  name nvarchar(120),
  constraint pk_artist primary key (artist_id)
);

create table customers
(
  customer_id integer not null,
  first_name nvarchar(40) not null,
  last_name nvarchar(20) not null,
  company nvarchar(80),
  address nvarchar(70),
  city nvarchar(40),
  state nvarchar(40),
  country nvarchar(40),
  postal_code nvarchar(10),
  phone nvarchar(24),
  fax nvarchar(24),
  email nvarchar(60) not null,
  support_rep_id integer,
  constraint pk_customer primary key (customer_id)
);

create table employees
(
  employee_id integer not null,
  last_name nvarchar(20) not null,
  first_name nvarchar(20) not null,
  title nvarchar(30),
  reports_to integer,
  birth_date date,
  hire_date date,
  address nvarchar(70),
  city nvarchar(40),
  state nvarchar(40),
  country nvarchar(40),
  postal_code nvarchar(10),
  phone nvarchar(24),
  fax nvarchar(24),
  email nvarchar(60),
  constraint PK_Employee primary key (employee_id)
);

create table genres
(
  genre_id integer not null,
  name nvarchar(120),
  constraint pk_genre primary key (genre_id)
);

create table invoices
(
  invoice_id integer not null,
  customer_id integer not null,
  invoice_date date not null,
  billing_address nvarchar(70),
  billing_city nvarchar(40),
  billing_state nvarchar(40),
  billing_country nvarchar(40),
  billing_postal_code nvarchar(10),
  total numeric(10,2) not null,
  constraint pk_invoice primary key (invoice_id)
);

create table invoice_items
(
  invoice_line_id integer not null,
  invoice_id integer not null,
  track_id integer not null,
  unit_price numeric(10,2) not null,
  quantity integer not null,
  constraint pk_invoice_line primary key (invoice_line_id)
);

create table media_types
(
  media_type_id integer not null,
  name nvarchar(120),
  constraint pk_media_type primary key (media_type_id)
);

create table playlists
(
  playlist_id integer not null,
  name nvarchar(120),
  constraint pk_playlist primary key (playlist_id)
);

create table playlist_track
(
  playlist_id integer not null,
  track_id integer not null,
  constraint pk_playlist_track primary key (playlist_id, track_id)
);

create table tracks
(
  track_id integer not null,
  name nvarchar(200) not null,
  album_id integer,
  media_type_id integer not null,
  genre_id integer,
  composer nvarchar(220),
  milliseconds integer not null,
  bytes integer,
  unit_price numeric(10,2) not null,
  constraint pk_track primary key (track_id)
);

/**
* Create foreign keys indexes.
*
* See https://github.com/duckdb/duckdb/issues/46
* for more info on duckdb foreign keys.
*/
create index ifk_album_artist_id on albums (artist_id);
create index ifk_customer_support_rep_id on customers (support_rep_id);
create index ifk_employee_reports_to on employees (reports_to);
create index ifk_invoice_customer_id on invoices (customer_id);
create index ifk_invoice_item_invoice_id on invoice_items (invoice_id);
create index ifk_invoice_item_track_id on invoice_items (track_id);
create index ifk_playlist_track_track_id on playlist_track (track_id);
create index ifk_track_album_id on tracks (album_id);
create index ifk_track_genre_id on tracks (genre_id);
create index ifk_track_media_type_id on tracks (media_type_id);
