CREATE OR REPLACE FUNCTION get_user_balance (
    p_username IN VARCHAR2
) RETURN NUMBER
IS
    l_balance NUMBER;
    l_sql     VARCHAR2(4000);
BEGIN
    -- ❌ Vulnerable to SQL Injection
    l_sql := 'SELECT balance FROM users WHERE username = '''
             || p_username || '''';

    EXECUTE IMMEDIATE l_sql INTO l_balance;

    RETURN l_balance;

EXCEPTION
    -- ❌ Overly broad exception handling (hides real problems)
    WHEN OTHERS THEN
        RETURN 0;
END;
/
