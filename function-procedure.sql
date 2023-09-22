CREATE OR REPLACE PROCEDURE amount(
	_price NUMERIC, 
	_model integer
) LANGUAGE plpgsql AS $$
	BEGIN
		UPDATE car
		SET price = _price
		WHERE model= _model;
		COMMIT;
	END
$$;

CALL amount(35800.25,"camry");