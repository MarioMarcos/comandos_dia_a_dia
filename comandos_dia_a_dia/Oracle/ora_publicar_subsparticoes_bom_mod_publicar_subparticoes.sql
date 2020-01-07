--por André Magalhães
-- para ser usado quando solicitado.

Banco de carga
create or replace view SPT_ADIV_RA_DEC_2016_02_3 as select * from arrc.WF_ARRC_COMP_LIQ_DIAS_VERT subpartition (SPT_ADIV_RA_DEC_2016_02_3);

Produção
alter table arrc.WF_ARRC_COMP_LIQ_DIAS_VERT truncate subpartition SPT_ADIV_RA_DEC_2016_02_3;

alter index ARRC.WF_ARRC_COMP_LIQ_DIAS_VERT_PK rebuild pctfree 1 parallel (degree 4) compute statistics nologging;

insert /*+ apppend */ into arrc.WF_ARRC_COMP_LIQ_DIAS_VERT subpartition (SPT_ADIV_RA_DEC_2016_02_3)
select * from SPT_ADIV_RA_DEC_2016_02_3@dbl_link;
COMMIT;

Banco de carga
create or replace view SPT_ATOV_RA_DEC_2016_02_3 as select * from  ARRC.WF_ARRC_COMP_LIQ_TOT_VERT subpartition (SPT_ATOV_RA_DEC_2016_02_3);
create or replace view SPT_ATOV_RA_DEC_2016_03_1 as select * from  ARRC.WF_ARRC_COMP_LIQ_TOT_VERT subpartition (SPT_ATOV_RA_DEC_2016_03_1);

Produção
alter table ARRC.WF_ARRC_COMP_LIQ_TOT_VERT truncate subpartition SPT_ATOV_RA_DEC_2016_02_3;
alter table ARRC.WF_ARRC_COMP_LIQ_TOT_VERT truncate subpartition SPT_ATOV_RA_DEC_2016_03_1;

alter index ARRC.WF_ARRC_COMP_LIQ_TOT_VERT_PK rebuild pctfree 1 parallel (degree 4) compute statistics nologging;

insert /*+ apppend */ into ARRC.WF_ARRC_COMP_LIQ_TOT_VERT subpartition (SPT_ATOV_RA_DEC_2016_02_3)
select * from SPT_ATOV_RA_DEC_2016_02_3@dbl_link;
COMMIT;

insert /*+ apppend */ into ARRC.WF_ARRC_COMP_LIQ_TOT_VERT subpartition (SPT_ATOV_RA_DEC_2016_03_1)
select * from SPT_ATOV_RA_DEC_2016_03_1@dbl_link;
COMMIT;
