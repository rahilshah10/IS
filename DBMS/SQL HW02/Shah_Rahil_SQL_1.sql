/*Question 1*/
select 
	au_fname,au_lname,state
		from
		 authors
			where
			 state ='CA'

/*Question 2*/
select 
	au_fname,au_lname,a.au_id,ta.title_id,t.title
	from authors as a
		join 
			titleauthor as ta
				on 
				ta.au_id = a.au_id
		join
			titles as t
			on 
			t.title_id = ta.title_id
/*Question 3*/
select
	 fname,lname,emp_id,j.job_desc
		from 
		employee as e
join
	 jobs as j
		on 
		e.job_id = j.job_id
			
/*Question 4*/
	 select 
	t.title,sum(t.price*s.qty) as Total_sales
		from 
			titles t
			join 
			sales s
			on
			t.title_id = s.title_id	
			group by t.title

/*Question 5*/
select stor_name,sum(sa.qty*t.price) as Total_Sales_CA
	 from stores as s
	 join sales as sa
	 on sa.stor_id = s.stor_id
	 join titles as t
	 on sa.title_id = t.title_id			
		where
		state = 'CA'
	group by s.stor_name

/*Question 6*/
/*The script uses ANSI_NULL to set the NULL to a value so that it can be compared using the (=).
It then uses CREATE TABLE to create the authors table with the columns having specific name and their respective data types.
We use defaults and checks to add validations to the columns
*/
USE [pubs]
GO

/****** Object:  Table [dbo].[authors]    Script Date: 22-01-2018 18:20:27 ******/
SET ANSI_NULLS ON --
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[authors](
	[au_id] [dbo].[id] NOT NULL,
	[au_lname] [varchar](40) NOT NULL,
	[au_fname] [varchar](20) NOT NULL,
	[phone] [char](12) NOT NULL,
	[address] [varchar](40) NULL,
	[city] [varchar](20) NULL,
	[state] [char](2) NULL,
	[zip] [char](5) NULL,
	[contract] [bit] NOT NULL,
 CONSTRAINT [UPKCL_auidind] PRIMARY KEY CLUSTERED 
(
	[au_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[authors] ADD  DEFAULT ('UNKNOWN') FOR [phone]
GO

ALTER TABLE [dbo].[authors]  WITH CHECK ADD CHECK  (([au_id] like '[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]'))
GO

ALTER TABLE [dbo].[authors]  WITH CHECK ADD CHECK  (([zip] like '[0-9][0-9][0-9][0-9][0-9]'))
GO

/*Question 7*/
-- The column au_id in authors uses the data type varchar(11) to create numerical and specials character (-) combination.
/*Question 8*/
select s.stor_name,t.title,t.title_id,sa.qty,sa.payterms
from stores s
join sales sa
on s.stor_id = sa.stor_id
join titles t
on t.title_id = sa.title_id
where sa.payterms = 'Net 30'

/*Question 9*/
select *
from titles as t
full join sales s
on t.title_id = s.title_id
where t.ytd_sales is null
order by t.title

/*Question 10*/

select t.title,t.title_id
from titles t
where price is null