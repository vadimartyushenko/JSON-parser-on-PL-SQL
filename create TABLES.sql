/*
Создаем таблицу для исходных данных
 */
--------------------------------------------------------------
create table ae_spec (
  id             number                           not null,
  name           varchar2(30)                     not null,
  json           CLOB
);

alter table ae_spec add
  constraint pk_ae_spec primary key(id);
--------------------------------------------------------------
/*
Создаем временную таблицу для парсинга
*/
--------------------------------------------------------------
create global temporary table ae_json (
  id                 number                           not null,
  parent_id          number,
  name               varchar2(1000),
  value              varchar2(1000)
) on commit delete rows;
--------------------------------------------------------------
