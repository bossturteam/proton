procedure my_proc(v_param in varchar2)
is
a varchar2(10);
b number;
begin
  dbms_output.put_line('message');
  if a = '' then
    select sysdate from dual;
  else
    select sysdate - 1 from dual;
  end if;

end my_proc;

-- sonar-scanner.bat -D"sonar.organization=bossturteam" -D"sonar.projectKey=bossturteam_proton" -D"sonar.sources=." -D"sonar.host.url=https://sonarcloud.io"