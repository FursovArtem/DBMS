use PD_321

select
		[������] = group_name,
		[���������� ���������] = count(stud_id)
from	Groups, Students
where	Students.[group] = groups.group_id
group by group_name			--���� ���� ��������� ������� �������������,
							--�� ����������� ����� ������� ����������� ������
--having count(stud_id) > 10
order by [���������� ���������] desc		--descending - � ������� ��������