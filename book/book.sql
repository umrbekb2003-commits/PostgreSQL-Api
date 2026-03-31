create table book (id serial primary key, title varchar(100) unique not null, page bigint not null ); --A table named book was created, with the columns title and pages.

create table page_content(id serial primary key, page_contents text not null, books_id int references book(id) not null); --A table named page_content was created, and a column was added to link page_contents with book_id.


select id title from book where title ilike '%title_name%'; --Search by book ID or title.

select book_id page_contents from page_contents where book_id = 1; -- Search for data in page_content using the book table ID.

select page_contents from page_content limit 1 offset 1; -- 1 page 
select page_contents from page_content limit 1 offset 2; -- 2 page
