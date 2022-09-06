select * from user_info_with_gender;

select * from table(fn_get_user_param_gen('남자'));
select * from table(fn_get_user_param_gen('여자'));
select * from table(fn_get_user_param_gen('unknown'));


select * from table(fn_get_user_param_gen_num(1));
select * from table(fn_get_user_param_gen_num(2));
select * from table(fn_get_user_param_gen_num(3));

select * from  user_info where user_gender_num=1;