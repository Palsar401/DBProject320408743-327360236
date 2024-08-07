
תכנית ראשית 1

DECLARE
    v_mechanic_id INT := 1;
    v_specialization VARCHAR2(50);
    v_ref_cursor SYS_REFCURSOR;
    v_mechanic_record MECHANIC%ROWTYPE;
BEGIN
    -- קריאה לפונקציה וקבלת רשומות Ref Cursor
    v_ref_cursor := GetMechanicsBySpecialization('Engine Specialist');

    -- לולאה לקריאת רשומות מתוך ה-Ref Cursor
    LOOP
        FETCH v_ref_cursor INTO v_mechanic_record;
        EXIT WHEN v_ref_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Mechanic: ' || v_mechanic_record.mechanicname || 
                             ', Specialization: ' || v_mechanic_record.specialization);
    END LOOP;
    CLOSE v_ref_cursor;

    -- קריאה לפרוצדורה לעדכון ההתמחות
    UpdateMechanicSpecialization(v_mechanic_id, 'Transmission Specialist');

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
END;
/

תכנית ראשית 2

DECLARE
    v_vehicle_id INT := 1;
    v_vehiclemodel VARCHAR2(50) := 'ModelX';
    v_ref_cursor SYS_REFCURSOR;
    v_vehicle_record VEHICLE%ROWTYPE;
BEGIN
    -- קריאה לפונקציה וקבלת רשומות Ref Cursor
    v_ref_cursor := GetVehiclesByModel(v_vehiclemodel);

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

    -- קריאה לפרוצדורה לעדכון מספר האוטובוס
    UpdateVehicleBusNumber(v_vehicle_id, 1234);

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
END;
/
