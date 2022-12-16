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
    if b is null then
    dbms_output.put_line('message b');
    end if;

    b:=b/0;
  end if;

end my_proc;

-- D:\Dad\Work\Applications\sonar-scanner-4.7.0.2747-windows\bin\sonar-scanner.bat -D"sonar.organization=bossturteam" -D"sonar.projectKey=bossturteam_proton" -D"sonar.sources=." -D"sonar.host.url=https://sonarcloud.io"