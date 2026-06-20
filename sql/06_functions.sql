DELIMITER $$

CREATE FUNCTION fn_energy_dependency(
    share_value DECIMAL(10,2)
)

RETURNS VARCHAR(30)

DETERMINISTIC

BEGIN

    DECLARE result_label VARCHAR(30);

    IF share_value >= 50 THEN
        SET result_label = 'High';
    ELSEIF share_value >= 20 THEN
        SET result_label = 'Medium';
    ELSE
        SET result_label = 'Low';
    END IF;

    RETURN result_label;

END $$

DELIMITER ;

SELECT
    fn_energy_dependency(65);