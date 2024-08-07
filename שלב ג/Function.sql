פונקציה 1 
CREATE OR REPLACE FUNCTION ManageVehicleData(p_vehicle_id INT, p_new_busnumber INT, p_model VARCHAR2)
RETURN SYS_REFCURSOR
IS
    v_ref_cursor SYS_REFCURSOR;
    v_vehicle_record VEHICLE%ROWTYPE;
    v_current_busnumber INT;
    v_updated_rows INT := 0;
BEGIN
    -- Cursor סמוי (Implicit Cursor) כדי לקבל את המספר הנוכחי של האוטובוס
    BEGIN
        SELECT busnumber INTO v_current_busnumber
        FROM VEHICLE
        WHERE vehicleid = p_vehicle_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_current_busnumber := NULL;
    END;

    -- הסתעפות לבדיקת אם נדרש לעדכן את מספר האוטובוס
    IF v_current_busnumber IS NOT NULL THEN
        -- פקודת DML לעדכון מספר האוטובוס
        UPDATE VEHICLE
        SET busnumber = p_new_busnumber
        WHERE vehicleid = p_vehicle_id;

        v_updated_rows := SQL%ROWCOUNT;

        -- Commit רק אם בוצע עדכון
        IF v_updated_rows > 0 THEN
            COMMIT;
        ELSE
            ROLLBACK;
        END IF;
    ELSE
        DBMS_OUTPUT.PUT_LINE('No vehicle found with ID: ' || p_vehicle_id);
    END IF;

    -- שימוש ב-Cursor גלוי (Explicit Cursor) להחזרת רשומות
    OPEN v_ref_cursor FOR
        SELECT * FROM VEHICLE WHERE vehiclemodel = p_model;

    -- לולאה לקריאת רשומות מתוך ה-Ref Cursor
    LOOP
        FETCH v_ref_cursor INTO v_vehicle_record;
        EXIT WHEN v_ref_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Vehicle ID: ' || v_vehicle_record.vehicleid || 
                             ', Bus Number: ' || v_vehicle_record.busnumber || 
                             ', Model: ' || v_vehicle_record.vehiclemodel || 
                             ', Manufacture Year: ' || v_vehicle_record.manufactureyear);
    END LOOP;
    CLOSE v_ref_cursor;

    -- החזרת Ref Cursor
    OPEN v_ref_cursor FOR
        SELECT * FROM VEHICLE WHERE vehiclemodel = p_model;

    RETURN v_ref_cursor;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        RETURN NULL;
END ManageVehicleData;
/

קוד זה יאפשר לראות את התוצאות לאחר קריאת הפונקציה ManageVehicleData ויציג את הנתונים של רכבים מדגם מסוים מתוך ה-Ref Cursor.
DECLARE
    v_ref_cursor SYS_REFCURSOR;
    v_vehicle_record VEHICLE%ROWTYPE;
BEGIN
    -- קריאה לפונקציה
    v_ref_cursor := ManageVehicleData(1, 1234, 'ModelX');

    -- לולאה לקריאת רשומות מתוך ה-Ref Cursor
    LOOP
        FETCH v_ref_cursor INTO v_vehicle_record;
        EXIT WHEN v_ref_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Vehicle ID: ' || v_vehicle_record.vehicleid || 
                             ', Bus Number: ' || v_vehicle_record.busnumber || 
                             ', Model: ' || v_vehicle_record.vehiclemodel || 
                             ', Manufacture Year: ' || v_vehicle_record.manufactureyear);
    END LOOP;
    CLOSE v_ref_cursor;
END;
/




פונקציה 2
CREATE OR REPLACE FUNCTION ManageMechanicData(
    p_mechanic_id INT,
    p_new_specialization VARCHAR2,
    p_specialization_filter VARCHAR2
) RETURN SYS_REFCURSOR
IS
    v_ref_cursor SYS_REFCURSOR;
    v_mechanic_record MECHANIC%ROWTYPE;
    v_current_specialization VARCHAR2(50);
    v_updated_rows INT := 0;
BEGIN
    -- Cursor סמוי (Implicit Cursor) כדי לקבל את ההתמחות הנוכחית של המכונאי
    BEGIN
        SELECT specialization INTO v_current_specialization
        FROM MECHANIC
        WHERE mechanicid = p_mechanic_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_current_specialization := NULL;
    END;

    -- הסתעפות לבדיקת אם נדרש לעדכן את ההתמחות
    IF v_current_specialization IS NOT NULL THEN
        -- פקודת DML לעדכון ההתמחות
        UPDATE MECHANIC
        SET specialization = p_new_specialization
        WHERE mechanicid = p_mechanic_id;

        v_updated_rows := SQL%ROWCOUNT;

        -- Commit רק אם בוצע עדכון
        IF v_updated_rows > 0 THEN
            COMMIT;
        ELSE
            ROLLBACK;
        END IF;
    ELSE
        DBMS_OUTPUT.PUT_LINE('No mechanic found with ID: ' || p_mechanic_id);
    END IF;

    -- שימוש ב-Cursor גלוי (Explicit Cursor) להחזרת רשומות
    OPEN v_ref_cursor FOR
        SELECT * FROM MECHANIC WHERE specialization = p_specialization_filter;

    -- לולאה לקריאת רשומות מתוך ה-Ref Cursor
    LOOP
        FETCH v_ref_cursor INTO v_mechanic_record;
        EXIT WHEN v_ref_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Mechanic ID: ' || v_mechanic_record.mechanicid || 
                             ', Name: ' || v_mechanic_record.mechanicname || 
                             ', Specialization: ' || v_mechanic_record.specialization);
    END LOOP;
    CLOSE v_ref_cursor;

    -- החזרת Ref Cursor
    OPEN v_ref_cursor FOR
        SELECT * FROM MECHANIC WHERE specialization = p_specialization_filter;

    RETURN v_ref_cursor;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        RETURN NULL;
END ManageMechanicData;
/

קוד זה יאפשר לראות את התוצאות לאחר קריאת הפונקציה ManageMechanicData ויציג את הנתונים של מכונאים עם התמחות מסוימת מתוך ה-Ref Cursor.

DECLARE
    v_ref_cursor SYS_REFCURSOR;
    v_mechanic_record MECHANIC%ROWTYPE;
BEGIN
    -- קריאה לפונקציה
    v_ref_cursor := ManageMechanicData(1, 'Electrician', 'Electrician');

    -- לולאה לקריאת רשומות מתוך ה-Ref Cursor
    LOOP
        FETCH v_ref_cursor INTO v_mechanic_record;
        EXIT WHEN v_ref_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Mechanic ID: ' || v_mechanic_record.mechanicid || 
                             ', Name: ' || v_mechanic_record.mechanicname || 
                             ', Specialization: ' || v_mechanic_record.specialization);
    END LOOP;
    CLOSE v_ref_cursor;
END;
/

