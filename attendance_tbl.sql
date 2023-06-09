CREATE TABLE ATTENDANCE (
	USER_ID VARCHAR(20) NOT NULL,
	MEET_ID INT NOT NULL,
	ATTD_CHECK ENUM('YES', 'NO') DEFAULT 'NO',
	ATTD_DATE DATETIME,
	SEND_MSG ENUM('YES', 'NO') DEFAULT 'NO',
	FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID),
	FOREIGN KEY (MEET_ID) REFERENCES MEETING(MEET_ID)
)