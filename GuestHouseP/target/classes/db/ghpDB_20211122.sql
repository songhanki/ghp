create table member_list
(
    mb_seq number not null ,
    mb_email varchar2(64) not null PRIMARY KEY,
    mb_password varchar2(128) not null,
    mb_name varchar2(64) not null,
    mb_birth date not null,
    mb_phone varchar2(64) not null,
    mb_address varchar2(64) not null,
    mb_sleep CHAR(1) default 'y' check(mb_sleep in('y','n')),
    mb_last date not null,
    mb_pfimg  varchar2(64)
);
create SEQUENCE member_list_seq INCREMENT by 1 start with 1 MAXVALUE 9999;
/*
insert into member_list ( 
    mb_seq,    mb_email,    mb_password,    mb_name,    mb_birth,    mb_phone,    mb_address,    mb_sleep,    mb_last,    mb_pfimg
    )     values     (
    member_list_seq.nextval, 
    'hksong',
    '123',
    '뭐시기',
    '1992-07-06',
    '010-6462-0454',
    '',
    'y',
    '1992-07-06',
    '123') ;
*/
create table room_list
(
    rm_seq number not null PRIMARY KEY,
    rm_name varchar2(64) not null,
    rm_img varchar2(64) not null,
    rm_loc varchar2(64) not null,
    rm_room varchar2(64) not null,
    rm_person varchar2(64) not null,
    rm_price varchar2(64) not null,
    rm_commnet varchar2(1000) not null
);
create SEQUENCE room_list_seq INCREMENT by 1 start with 1 MAXVALUE 9999;

create table notice_list
(
    nc_seq number not null PRIMARY KEY,
    nc_title varchar2(64) not null,
    nc_commnet varchar2(1000) not null,
    nc_wdate timestamp default SYSDATE not null,
    nc_view number default 0 not null,
    nc_writer varchar2(64) not null
);
create SEQUENCE notice_list_seq INCREMENT by 1 start with 1 MAXVALUE 9999;


create table event_list
(
    ev_seq number not null PRIMARY KEY,
    ev_title varchar2(64) not null,
    ev_img varchar2(64) not null,
    ev_commnet varchar2(1000) not null,
    ev_wdate timestamp default SYSDATE not null,
    ev_sdate timestamp not null,
    ev_edate timestamp not null,
    ev_state char(1) default 'A' check(ev_state in('A','E','I')),
    ev_view number default 0 not null,
    ev_writer varchar2(64) not null
);
create SEQUENCE event_list_seq INCREMENT by 1 start with 1 MAXVALUE 9999;


create table faq_list
(
    faq_seq number not null PRIMARY KEY,
    faq_title varchar2(64) not null,
    faq_commnet varchar2(1000) not null,
    faq_wdate timestamp default SYSDATE not null,
    faq_category char(1) default 'A' check(faq_category in('A','B','C')),
    faq_writer varchar2(64) not null
);
create SEQUENCE faq_list_seq INCREMENT by 1 start with 1 MAXVALUE 9999;

create table qna_list
(
    qna_seq number not null PRIMARY KEY,
    qna_title varchar2(64) not null,
    qna_commnet varchar2(1000) not null,
    qna_qcategory char(1) default 'Q' check(qna_qcategory in('Q','A')),
    qna_upperseq number,
    qna_answer char(1) default 'N' check(qna_answer in('Y','N')),
    qna_qdate timestamp default SYSDATE not null,
    qna_adate timestamp ,
    faq_writer varchar2(64) not null,
    qna_phone varchar2(64) not null,
    qna_category  char(1) default 'A' check(qna_category in('A','B','C'))
);
create SEQUENCE qna_list_seq INCREMENT by 1 start with 1 MAXVALUE 9999;

/*
CONSTRAINT [외래키 명] FOREIGN KEY ([외래키할 컬럼명])
REFERENCES [참조하는테이블명]([참조하는 컬럼명])
*/

/*reserve_list*/
create table reserve_list
(
    rsv_seq number not null PRIMARY KEY,
    rsv_sdate timestamp not null,
    rsv_edate timestamp not null,
    rsv_room varchar2(64) not null,
    rsv_person varchar2(64) not null,
    rsv_name varchar2(64) not null,
    rsv_phone varchar2(64) not null,
    rsv_pay_yn char(1) default 'N' check(rsv_pay_yn in('Y','N')),
    rsv_price number not null,
    rsv_payment char(1) default 'A' check(rsv_payment in('A','B')),
    rsv_wdate timestamp not null,
    mb_email varchar2(64) not null,
    rm_seq number not null,
    CONSTRAINT fk_mb_email FOREIGN KEY (mb_email)
    REFERENCES member_list(mb_email),
    CONSTRAINT fk_rm_seq FOREIGN KEY (rm_seq)
    REFERENCES room_list(rm_seq)
);
create SEQUENCE reserve_list_seq INCREMENT by 1 start with 1 MAXVALUE 9999;

/*evaluate_list*/
create table evaluate_list
(
    eva_seq number not null PRIMARY KEY,
    eva_commnet varchar2(1000) not null,
    eva_score number not null,
    eva_wdate timestamp not null,
    rm_seq number not null,
    rsv_seq number not null,
    mb_email varchar2(64) not null,
    CONSTRAINT fk_eva_rm_seq FOREIGN KEY (rm_seq)
    REFERENCES room_list(rm_seq),
    CONSTRAINT fk_eva_rsv_seq FOREIGN KEY (rsv_seq)
    REFERENCES reserve_list(rsv_seq),
    CONSTRAINT fk_eva_mb_email FOREIGN KEY (mb_email)
    REFERENCES member_list(mb_email)
);
create SEQUENCE evaluate_list_seq INCREMENT by 1 start with 1 MAXVALUE 9999;


create table travel_info_list
(
    ti_seq number not null PRIMARY KEY,
    ti_title varchar2(64) not null,
    ti_commnet varchar2(1000) not null,
    ti_wdate timestamp default SYSDATE not null,
    ti_writer varchar2(64) not null,
    ti_view number default 0 not null,
    ti_img varchar2(64)
);
create SEQUENCE travel_info_list_seq INCREMENT by 1 start with 1 MAXVALUE 9999;

/*travel_info_comment*/
create table travel_info_comment
(
    tic_seq number not null PRIMARY KEY,
    ti_seq number not null,
    tic_cmt_seq number,
    tic_commnet varchar2(1000) not null,
    tic_depth number default 0 check(tic_depth in(1,0)),
    tic_wdate timestamp default SYSDATE not null,
    mb_email varchar2(64) not null,
    CONSTRAINT fk_tic_ti_seq FOREIGN KEY (ti_seq)
    REFERENCES travel_info_list(ti_seq),
    CONSTRAINT fk_tic_mb_email FOREIGN KEY (mb_email)
    REFERENCES member_list(mb_email)
);
create SEQUENCE travel_info_comment_seq INCREMENT by 1 start with 1 MAXVALUE 9999;



create table travel_review_list
(
    tr_seq number not null PRIMARY KEY,
    tr_title varchar2(64) not null,
    tr_commnet varchar2(1000) not null,
    tr_wdate timestamp default SYSDATE not null,
    tr_writer varchar2(64) not null,
    tr_view number default 0 not null,
    tr_img varchar2(64)
);
create SEQUENCE travel_review_list_seq INCREMENT by 1 start with 1 MAXVALUE 9999;

/*travel_review_comment*/
create table travel_review_comment
(
    trc_seq number not null PRIMARY KEY,
    tr_seq number not null,
    trc_cmt_seq number,
    trc_commnet varchar2(1000) not null,
    trc_depth number default 0 check(trc_depth in(1,0)),
    trc_wdate timestamp default SYSDATE not null,
    mb_email varchar2(64) not null,
    CONSTRAINT fk_trc_tr_seq FOREIGN KEY (tr_seq)
    REFERENCES travel_review_list(tr_seq),
    CONSTRAINT fk_trc_mb_email FOREIGN KEY (mb_email)
    REFERENCES member_list(mb_email)
);
create SEQUENCE travel_review_comment_seq INCREMENT by 1 start with 1 MAXVALUE 9999;

