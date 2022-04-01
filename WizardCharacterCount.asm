//Placeholder for Elect 74
.ORIG X3000
 
	LEA   R0, PROMPT1   ;PROMPTS THE USER TO ENTER THEIR
	PUTS                ;FIRST AND LAST NAME

	LD    R4, ascii

	LD    R3, period

	LD    R2, letter    ;PUT CHAR IN R2



	NOT   R2, R2

	ADD   R2, R2, #1    ;R2 NOW HAS 2'S COMPLEMENT OF CHAR



proceed

	AND   R0, R0, #0    ;CLEAR R0

	GETC                ;GETS THE NEXT CHARACTER IN THE NAME

	OUT            	    ;PRINTS EACH CHARACTER

	ADD   R1, R0, R2    ;ADD 2'S COMPLEMENT OF CHAR TO INPUT

	BRz   zero

	ADD   R1, R3, R0

	BRz   finish

	BRnp  proceed



zero

	ADD   R5, R5, #1    ;ADD 1 TO COUNTER IF EQUAL

	BRnzp proceed



finish

	LEA   R0, PROMPT2

	PUTS

	LD    R0, letter

	OUT

	LEA   R0, PROMPT3

	PUTS

	AND   R0, R7, #0    ;SET R0 TO 0

	ADD   R0, R5, R0    ;PUT COUNTER IN R0

	ADD   R0, R4, R0    ;CONVERT TO ASCII

	OUT

	LEA   R0, PROMPT4

	PUTS



	HALT

PROMPT1 .STRINGz "Enter your first and last name. \nWhen you are finished please enter a period(.):\n"

PROMPT2 .STRINGz "\nThe character "

PROMPT3 .STRINGz " appeared "

PROMPT4 .STRINGz " times."

letter  .FILL #115

period  .FILL #-46

ascii   .FILL #48

.END
