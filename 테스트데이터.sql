INSERT INTO `multicomdb`.`member` (`userId`, `userPwd`, `userName`) VALUES ('test1234', '1234', '윤성일');

INSERT INTO `multicomdb`.`member` (`userId`, `userPwd`, `userName`) VALUES ('test1235', '1234', '한상민');

INSERT INTO `multicomdb`.`member` (`userId`, `userPwd`, `userName`) VALUES ('test1236', '1234', '윤이나');

INSERT INTO `multicomdb`.`member` (`userId`, `userPwd`, `userName`) VALUES ('test1237', '1234', '장경준');

INSERT INTO `multicomdb`.`member` (`userId`, `userPwd`, `userName`) VALUES ('test1238', '1234', '김승현');


DELIMITER $$
DROP PROCEDURE IF EXISTS createData$$
CREATE PROCEDURE createData()
	BEGIN
		DECLARE i INT;
		
		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('자유글',i), CONCAT('글내용',i), '윤성일', CURRENT_TIMESTAMP, 'free');
				SET i = i + 1;
		END WHILE;	

		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('자유글',i), CONCAT('글내용',i), '한상민', CURRENT_TIMESTAMP, 'free');
				SET i = i + 1;
		END WHILE;	

		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('자유글',i), CONCAT('글내용',i), '윤이나', CURRENT_TIMESTAMP, 'free');
				SET i = i + 1;
		END WHILE;	

		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('자유글',i), CONCAT('글내용',i), '장경준', CURRENT_TIMESTAMP, 'free');
				SET i = i + 1;
		END WHILE;	

		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('자유글',i), CONCAT('글내용',i), '김승현', CURRENT_TIMESTAMP, 'free');
				SET i = i + 1;
		END WHILE;	
		
		
		
		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('질문글',i), CONCAT('질문내용',i), '윤성일', CURRENT_TIMESTAMP, 'qeus');
				SET i = i + 1;
		END WHILE;	

		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('질문글',i), CONCAT('질문내용',i), '한상민', CURRENT_TIMESTAMP, 'qeus');
				SET i = i + 1;
		END WHILE;

		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('질문글',i), CONCAT('질문내용',i), '장경준', CURRENT_TIMESTAMP, 'qeus');
				SET i = i + 1;
		END WHILE;

		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('질문글',i), CONCAT('질문내용',i), '윤이나', CURRENT_TIMESTAMP, 'qeus');
				SET i = i + 1;
		END WHILE;

		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('질문글',i), CONCAT('질문내용',i), '김승현', CURRENT_TIMESTAMP, 'qeus');
				SET i = i + 1;
		END WHILE;
		
		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('익명글',i), CONCAT('글내용',i), '윤성일', CURRENT_TIMESTAMP, 'anony');
				SET i = i + 1;
		END WHILE;	

		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('익명글',i), CONCAT('글내용',i), '한상민', CURRENT_TIMESTAMP, 'anony');
				SET i = i + 1;
		END WHILE;	

		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('익명글',i), CONCAT('글내용',i), '윤이나', CURRENT_TIMESTAMP, 'anony');
				SET i = i + 1;
		END WHILE;	

		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('익명글',i), CONCAT('글내용',i), '장경준', CURRENT_TIMESTAMP, 'anony');
				SET i = i + 1;
		END WHILE;	

		SET i = 1;
		WHILE i < 5 DO
				INSERT INTO multicomdb.board (`boardName`, `boardContent`, `userName`, `regdate`,`boardType`) VALUES (CONCAT('익명글',i), CONCAT('글내용',i), '김승현', CURRENT_TIMESTAMP, 'anony');
				SET i = i + 1;
		END WHILE;	
		
	
	
	END$$
DELIMITER ;
CALL createData;

