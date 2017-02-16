# sas-code



TITLE "MOBILITY STANCE TIME, TURN ANGLE, & MEAN TURN VELOCITY";
/****---------------------------------------------------------------****/
/****-----MOBILITY STANCE TIME, TURN ANGLE, & MEAN TURN VELOCITY----****/
/****---------------------------------------------------------------****/
data DEVICE_DAILY;
	set DEVICE_DAILY;
	WHERE dayofstudy GE 1;
run;
PROC SORT DATA=DEVICE_DAILY;
	BY gls_subject_code dayofstudy;
RUN;
proc freq data=device_daily;
	tables mobility_stance_at_home/ missing;
run;

PROC MEANS DATA=DEVICE_DAILY N MEAN STD MIN MAX MAXDEC=2 NOLABEL;
	VAR fatigue_level_at_home movement_rate duration_movement_count duration_rem_count rem_epochs  rem_percent;
	TITLE'FATIGUE AND SLEEP MEASURES';
RUN;
PROC MEANS DATA=DEVICE_DAILY N MEAN STD MIN MAX MAXDEC=2 NOLABEL;
	VAR turn_angle_clinic_1 turn_vel_mean_clinic_1 mobility_stance_clinic_1 hourly_temp_median_clinic_1 hourly_temp_range_clinic_1 hourly_amb_temp_median_clinic_1 hourly_amb_temp_range_clinic_1 ;
	TITLE'clinic 1';
RUN;
PROC MEANS DATA=DEVICE_DAILY N MEAN STD MIN MAX MAXDEC=2 NOLABEL;
	VAR turn_angle_clinic_2 turn_vel_mean_clinic_2 mobility_stance_clinic_2 hourly_temp_median_clinic_2	hourly_temp_range_clinic_2 hourly_amb_temp_median_clinic_2 hourly_amb_temp_range_clinic_2;
	TITLE'clinic 2';
RUN;
PROC MEANS DATA=DEVICE_DAILY N MEAN STD MIN MAX MAXDEC=2 NOLABEL;
	VAR turn_angle_clinic_3	turn_vel_mean_clinic_3 mobility_stance_clinic_3 hourly_temp_median_clinic_3 hourly_temp_range_clinic_3 hourly_amb_temp_median_clinic_3 hourly_amb_temp_range_clinic_3 ;
	TITLE'clinic 3';
RUN;
proc univariate data=DEVICE_DAILY ;
	var mobility_stance_at_home turn_angle_at_home turn_vel_mean_at_home;
run;



/****---------------------------------------------------------------****/
/****-----MOBILITY STANCE TIME, TURN ANGLE, & MEAN TURN VELOCITY----****/
/****---------------------------------------------------------------****/
*<<<STANCE;
ods trace on;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model stance= /s solution;
      random intercept/subject=gls_subject_code;
run;

CovParms


proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model stance=DAYOFSTUDY /s solution;
      random intercept DAYOFSTUDY/ TYPE=UN subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model stance=DAYOFSTUDY /s solution;
      random intercept / TYPE=UN subject=gls_subject_code;
run;
*<<<TURN ANGLE;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_angle=  /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_angle=DAYOFSTUDY /s solution;
      random intercept DAYOFSTUDY/ TYPE=UN subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_angle=DAYOFSTUDY /s solution;
      random intercept / TYPE=UN subject=gls_subject_code;
run;
*<<<MEAN TURN VELOCITY;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_mean= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_mean=DAYOFSTUDY /s solution;
      random intercept DAYOFSTUDY/ TYPE=UN subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_mean=DAYOFSTUDY /s solution;
      random intercept / TYPE=UN subject=gls_subject_code;
run;


*<<<turn_vel_mean;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_mean= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_mean=DAYOFSTUDY /s solution;
      random intercept DAYOFSTUDY/ TYPE=UN subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_mean=DAYOFSTUDY /s solution;
      random intercept / TYPE=UN subject=gls_subject_code;
run;

*<<<turn_vel_mean_ankle;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_mean_ankle= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_mean_ankle=DAYOFSTUDY /s solution;
      random intercept DAYOFSTUDY/ TYPE=UN subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_mean_ankle=DAYOFSTUDY /s solution;
      random intercept / TYPE=UN subject=gls_subject_code;
run;

*<<<turn_vel_std;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_std= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_std=DAYOFSTUDY /s solution;
      random intercept DAYOFSTUDY/ TYPE=UN subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_std=DAYOFSTUDY /s solution;
      random intercept / TYPE=UN subject=gls_subject_code;
run;









*<<<MOBILITY STANCE HOME MEASURE;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model mobility_stance_at_home=/s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model mobility_stance_at_home=DAYOFSTUDY /s solution;
      random intercept DAYOFSTUDY/ TYPE=UN subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model mobility_stance_at_home=DAYOFSTUDY /s solution;
      random intercept / TYPE=UN subject=gls_subject_code;
run;
*<<<TURN ANGLE HOME MEASURE;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_angle_at_home=  /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_angle_at_home=DAYOFSTUDY /s solution;
      random intercept DAYOFSTUDY/ TYPE=UN subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_angle_at_home=DAYOFSTUDY /s solution;
      random intercept / TYPE=UN subject=gls_subject_code;
run;
*<<<MEAN TURN VELOCITY HOME MEASURE;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_mean_at_home= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_mean_at_home=DAYOFSTUDY /s solution;
      random intercept DAYOFSTUDY/ TYPE=UN subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_mean_at_home=DAYOFSTUDY /s solution;
      random intercept / TYPE=UN subject=gls_subject_code;
run;


***model 1;
ods trace on;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_mean= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_mean_ankle= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_std= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_std_ankle= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_max_ankle= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model duration_movement_count= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model movement_rate= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model stance= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model swing= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_angle= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_angle_ankle= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_duration= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_duration_ankle= /s solution;
      random intercept/subject=gls_subject_code;
run;
proc mixed data=DEVICE_DAILY;
      class gls_subject_code ;
      model turn_vel_max= /s solution;
      random intercept/subject=gls_subject_code;
run;
