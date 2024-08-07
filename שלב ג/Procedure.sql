

פרוצדורה 1

CREATE OR REPLACE PROCEDURE ManageRepairData(
    p_repair_id INT,
    p_new_description VARCHAR2,
    p_mechanic_id_filter INT,
    out_ref_cursor OUT SYS_REFCURSOR
)
IS
    -- רשומה (Record) שמייצגת שורה מטבלת Repair
    v_repair_record Repair%ROWTYPE;
    -- משתנה לאחסון תיאור התיקון הנוכחי
    v_current_description VARCHAR2(100);
    -- משתנה לאחסון מספר השורות שעודכנו
    v_updated_rows INT := 0;
BEGIN
    -- Cursor סמוי (Implicit Cursor) כדי לקבל את תיאור התיקון הנוכחי
    BEGIN
        SELECT RepairDescription INTO v_current_description
        FROM Repair
        WHERE RepairID = p_repair_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_current_description := NULL;
    END;

    -- הסתעפות לבדיקת אם נדרש לעדכן את התיאור
    IF v_current_description IS NOT NULL THEN
        -- פקודת DML לעדכון התיאור
        UPDATE Repair
        SET RepairDescription = p_new_description
        WHERE RepairID = p_repair_id;

        v_updated_rows := SQL%ROWCOUNT;

        -- Commit רק אם בוצע עדכון
        IF v_updated_rows > 0 THEN
            COMMIT;
            DBMS_OUTPUT.PUT_LINE('Repair description updated successfully.');
        ELSE
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('No update performed.');
        END IF;
    ELSE
        DBMS_OUTPUT.PUT_LINE('No repair found with ID: ' || p_repair_id);
    END IF;

    -- שימוש ב-Cursor גלוי (Explicit Cursor) להחזרת רשומות
    OPEN out_ref_cursor FOR
        SELECT * FROM Repair WHERE MechanicID = p_mechanic_id_filter;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        ROLLBACK;
END ManageRepairData;
/

תוכנית ראשית (Main Program)

DECLARE
    v_ref_cursor SYS_REFCURSOR;
    v_repair_record Repair%ROWTYPE;
BEGIN
    -- קריאה לפרוצדורה
    ManageRepairData(1, 'Engine overhaul', 17, v_ref_cursor);

    -- לולאה לקריאת רשומות מתוך ה-Ref Cursor
    LOOP
        FETCH v_ref_cursor INTO v_repair_record;
        EXIT WHEN v_ref_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Repair ID: ' || v_repair_record.RepairID || 
                             ', Vehicle ID: ' || v_repair_record.VehicleID || 
                             ', Description: ' || v_repair_record.RepairDescription || 
                             ', Date: ' || v_repair_record.RepairDate || 
                             ', Mechanic ID: ' || v_repair_record.MechanicID);
    END LOOP;
    CLOSE v_ref_cursor;
END;
/


פרוצדורה 2

CREATE OR REPLACE PROCEDURE ManagePartData(
    p_part_id INT,
    p_new_price NUMBER,
    p_price_threshold NUMBER,
    out_ref_cursor OUT SYS_REFCURSOR
)
IS
    -- רשומה (Record) שמייצגת שורה מטבלת Part
    v_part_record Part%ROWTYPE;
    -- משתנה לאחסון שם החלק הנוכחי
    v_current_price NUMBER;
    -- משתנה לאחסון מספר השורות שעודכנו
    v_updated_rows INT := 0;
BEGIN
    -- Cursor סמוי (Implicit Cursor) כדי לקבל את המחיר הנוכחי של החלק
    BEGIN
        SELECT PartPrice INTO v_current_price
        FROM Part
        WHERE PartID = p_part_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_current_price := NULL;
    END;

    -- הסתעפות לבדיקת אם נדרש לעדכן את המחיר
    IF v_current_price IS NOT NULL AND v_current_price <> p_new_price THEN
        -- פקודת DML לעדכון המחיר
        UPDATE Part
        SET PartPrice = p_new_price
        WHERE PartID = p_part_id;

        v_updated_rows := SQL%ROWCOUNT;

        -- Commit רק אם בוצע עדכון
        IF v_updated_rows > 0 THEN
            COMMIT;
            DBMS_OUTPUT.PUT_LINE('Part price updated successfully.');
        ELSE
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('No update performed.');
        END IF;
    ELSE
        DBMS_OUTPUT.PUT_LINE('No part found with ID: ' || p_part_id || ' or no price change needed.');
    END IF;

    -- שימוש ב-Cursor גלוי (Explicit Cursor) להחזרת רשומות
    OPEN out_ref_cursor FOR
        SELECT * FROM Part WHERE PartPrice > p_price_threshold;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        ROLLBACK;
END ManagePartData;
/

תוכנית ראשית (Main Program)

DECLARE
    v_ref_cursor SYS_REFCURSOR;
    v_part_record Part%ROWTYPE;
BEGIN
    -- קריאה לפרוצדורה
    ManagePartData(1, 150.00, 100.00, v_ref_cursor);

    -- לולאה לקריאת רשומות מתוך ה-Ref Cursor
    LOOP
        FETCH v_ref_cursor INTO v_part_record;
        EXIT WHEN v_ref_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Part ID: ' || v_part_record.PartID || 
                             ', Part Name: ' || v_part_record.PartName || 
                             ', Part Description: ' || v_part_record.PartDescription || 
                             ', Part Price: ' || v_part_record.PartPrice);
    END LOOP;
    CLOSE v_ref_cursor;
END;
/
