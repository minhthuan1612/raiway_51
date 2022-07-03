             -- Chú ý: Tạo 1 File SQL đặt tên là "Testing_System_Assignment_3"
             -- Exercise 1: Tiếp tục với Database Testing System
-- Question 1: Thêm ít nhất 10 record vào mỗi table
-- Question 2: lấy ra tất cả các phòng ban
select * from department;

-- Question 3: lấy ra id của phòng ban "Sale"

select DepartmentID from department where DepartmentName ='Sale';
-- Question 4: lấy ra thông tin account có full name dài nhất
-- select * from `account`;
-- select max(length(FullName)) from `account`;
select UserName, FullName, length(FullName) as dodaichuoi from `account`
where length(FullName) = (select max(length(FullName)) from `account`)
order by FullName desc
limit 1;


-- Question 5: Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id = 3
select UserName, FullName, length(FullName) as dodaichuoi from `account`
where length(FullName) = (select max(length(FullName)) from `account`)
and DepartmentID = '3'
;
-- Question 6: Lấy ra tên group đã tham gia trước ngày 20/12/2019

select * from `group`
where CreateDate < '2019-12-20';

-- cập nhật thêm dữ liệu

-- Question 7: Lấy ra ID của question có >= 4 câu trả lời

select * from answer
group by QuestionID
having count(QuestionID)>=4;




-- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019
select * from exam
where Duration_min >= '60' and CreateDate < '2019-12-20';

-- Question 9: Lấy ra 5 group được tạo gần đây nhất
select  * from `group`
order by CreateDate desc
limit 5;

-- Question 10: Đếm số nhân viên thuộc department có id = 2
select *,count(*) from `account`
where DepartmentID = 2;


-- Question 11: Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"

select * from `account`
where UserName like 'D%0';
-- Question 12: Xóa tất cả các exam được tạo trước ngày 20/12/2019
delete from exam
where CreateDate < '2019-12-20';

-- Question 13: Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"
-- select * from question;

delete from question
where Content like'Câu hỏi%';
-- Question 14: Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
-- select * from `account`;

update `account`
set
UserName = 'Nguyễn Bá Lộc',
Email ='loc.nguyenba@vti.com.vn'
where accountID = 5
;

-- Question 15: update account có id = 5 sẽ thuộc group có id = 4
-- câu hỏi còn chung chung
update groupaccount
set
JoinDate = '2022-7-3'
where
GroupID=4 and AccountID=5
;

select * from `groupaccount`
-- Chú ý:
--  Viết đúng coding convention
--  Tuần thủ các best practice
--  Không chép bài người khác (sẽ có hình thức phạt nếu bị phát hiện)






