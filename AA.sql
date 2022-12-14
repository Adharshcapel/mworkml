use portfolioproject
select * from housingdata;
select min(SalePrice) as sp from (select distint(SalePrice) from housingdata order by SalePrice desc)where rownum>3;
select * from coviddeaths order by 3,4
select * from covidvaccinations order by 3,4
select location,date,total_cases,new_cases,total_deaths,population from coviddeaths	
select location,date,new_cases,total_cases,(total_deaths/total_cases)*100 as totaldeath_per ,population from coviddeaths where location like '%india%' order by 1,2
-- which countries have the highest infection rates compared to 
select location,max(total_cases) as maxcount,max((total_cases/population))*100 as totaldeath_per ,population from coviddeaths group by location,population order by totaldeath_per desc
select location,max(total_cases) as maxcount from coviddeaths group by location where location like '%africa%';
select location,max(total_deaths) as maxdc from coviddeaths group by location order by maxdc desc
select * from coviddeaths order by 3,4 Where continent is not null
update replace(continent,' ',NULL) from coviddeaths 
UPDATE
    Coviddeaths
SET
    continent=case continent when '' then NULL else continent end,
    new_cases=case new_cases when '' then NULL else new_cases end,
    total_deaths=case total_deaths when '' then NULL else total_deaths end 
update coviddeaths set continent=NULL where length(continent)=0;
select location,max(total_deaths) as maxdc from coviddeaths group by location order by maxdc desc
