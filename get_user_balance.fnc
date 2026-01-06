CREATE OR REPLACE FUNCTION login_and_get_role (
    p_username IN VARCHAR2,
    p_password IN VARCHAR2
) RETURN VARCHAR2
IS
    l_role VARCHAR2(100);
    l_sql  VARCHAR2(4000);
BEGIN
    -- ❌ 1. SQL Injection (username + password)
    -- ❌ 2. Plain-text password
    -- ❌ 3. Dynamic SQL + string concatenation
    l_sql :=
        'SELECT role FROM app_users ' ||
        'WHERE username = ''' || p_username || ''' ' ||
        'AND password = ''' || p_password || '''';

    EXECUTE IMMEDIATE l_sql INTO l_role;

    -- ❌ 4. Trust result blindly
    RETURN l_role;

EXCEPTION
    -- ❌ 5. Swallow all exceptions
    -- ❌ 6. Authentication bypass Admin
    WHEN OTHERS THEN
        RETURN 'ADMIN';
END;
/
