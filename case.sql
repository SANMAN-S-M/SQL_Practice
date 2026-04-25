-- CASE

/*1. 🎓 Grade Classification

Assign grades based on marks:

≥ 90 → A+
≥ 75 → A
≥ 60 → B
≥ 40 → C
< 40 → Fail*/

select *,
case
when marks>=90 then'A+'
when marks>=75 then'A'
when marks>=60 then'B'
when marks>=40 then'c'
when marks<40 then 'fail'
end as grade
from student_marks;

/*2. ✅ Pass / Fail Status

Display whether each student is Pass or Fail (passing marks = 40).*/

select student_name,marks,
case
when marks>=40 then'pass'
else 'fail'
end as result
from student_marks;

/*3. 📊 Attendance Category

Classify attendance:

≥ 90 → Excellent
75–89 → Good
< 75 → Poor*/


select student_name,attendance,
case
when attendance>=90 then'excellent'
when attendance between 75 and 89 then 'good'
else 'poor'
end as attendance_category
from student_marks;

/*4. 🎯 Scholarship Eligibility

Show students as Eligible if:

marks > 85 AND attendance > 85
Otherwise → Not Eligible*/

select student_name,marks,
case
when marks>85 and attendance>85 then 'eligible'
else 'not eligible'
end as scholorship_eligibility
from student_marks;

/*5. 🔄 Bonus Marks

Add 5 bonus marks to students who scored less than 50.*/

select student_name,marks,
case
when marks<50 then marks+5
else marks
end as bonuus
from student_marks;


/*6. 📚 Subject Difficulty Level

Classify subjects:

Math → Hard
Science → Medium
English → Easy*/

select student_name,subject,
case
when subject='math' then'hard'
when subject='science' then 'medium'
when subject='english' then 'easy'
end as subject_difficulty
from student_marks;

/*7. 🏆 Performance Level

Categorize students:

≥ 80 → Top Performer
50–79 → Average
< 50 → Weak*/

select student_name,attendance,marks,
case
when marks>=80 then 'top performer'
when marks between 50 and 79 then 'average'
when marks<50 then 'weak'
end as performance
from student_marks;

/*8. 📅 Exam Day Type

Label exam days:

If exam_date is '2024-03-10' → "Day 1"
'2024-03-11' → "Day 2"
'2024-03-12' → "Day 3"*/

select student_name,exam_date,
case 
when exam_date='2024-03-10' then 'DAY 1'
when exam_date='2024-03-11' then 'DAY 2'
when exam_date='2024-03-12' then 'DAY 3'
end as exam_days
from student_marks;


/*9. 📈 Improvement Needed

Show:

"Needs Improvement" if marks < 60
"Satisfactory" if marks ≥ 60*/

select student_name,marks,
case
when marks<60 then'needs improvement'
when marks>=60 then'satisfactory'
end as improvement_needed
from student_marks;

/*10. 🔢 Even/Odd Marks

Check whether marks are:

Even → "Even Marks"
Odd → "Odd Marks"*/

select student_name,marks,
case
when marks%2=0 then 'even marks'
when marks%2=1 then 'odd marks'
end as even_or_odd_marks
from student_marks;






