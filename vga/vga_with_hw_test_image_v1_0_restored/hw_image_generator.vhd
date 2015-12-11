--------------------------------------------------------------------------------
--
--   FileName:         hw_image_generator.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 64-bit Version 12.1 Build 177 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 05/10/2013 Scott Larson
--     Initial Public Release
--    
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE ieee.math_real.all;

ENTITY hw_image_generator IS
	GENERIC(

		--Downloaded code
		pixels_y :	INTEGER := 478;    --row that first color will persist until
		pixels_x	:	INTEGER := 600;   --column that first color will persist until
		h_pixels	:	STD_LOGIC_VECTOR(10 downto 0) := "10100000000";		--horiztonal display width in pixels (1280)
		v_pixels	:	STD_LOGIC_VECTOR(10 downto 0) := "10000000000";		--vertical display width in rows (1024)
		--


		ship_speed	:INTEGER :=10;	--speed of the ship
		bul_speed	:INTEGER :=30;	--speed of the bullet
		ast_speed	:INTEGER	:=5;	--speed of the asteroid
		ast_radius	:INTEGER	:=20;	--radius of the asteroid
		col_dist		:INTEGER	:=30;	--collision distance
		
		--directions that the ship is facing
		dir_right : natural := 0;			--right
		dir_up : natural := 2;				--up
		dir_left : natural := 4;			--left
		dir_down : natural := 6;			--down
		dir_up_right : natural := 1;		--up to the right
		dir_up_left : natural := 3;		--up to the left
		dir_down_left : natural := 5;		--down to the left
		dir_down_right : natural := 7;	--down to the right
		
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 25000000);	--50000000

	PORT(
		--Downloaded code
		disp_ena		:	IN		STD_LOGIC;	--display enable ('1' = display time, '0' = blanking time)
		column		:	IN		INTEGER;		--column pixel coordinate
		row			:	IN		INTEGER;		--row pixel coordinate
		--

		clk_control	:	IN		STD_LOGIC;		--input pixel clock
		reset_switch	:	IN		STD_LOGIC;
		shoot			:	IN		STD_LOGIC;	--input from key_4
		key_right	:	IN		STD_LOGIC;	--input from key_0
		key_up		:	IN		STD_LOGIC;	--input from key_1
		key_down		:	IN		STD_LOGIC;	--input from key_2
		key_left		:	IN		STD_LOGIC;	--input from key_3
		clk2		 	:  IN		std_logic;
		
		--Downloaded code
		red			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
		green			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
		blue			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0')); --blue magnitude output to DAC
		--

END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS
		SIGNAL go_right	:	std_logic;
		SIGNAL go_left		:	std_logic;
		SIGNAL go_up		:	std_logic;
		SIGNAL go_down		:	std_logic;

		SIGNAL fire			:	std_logic;	--'1' when the bullet is fired

		SIGNAL visible1	:	std_logic;	--'1' when bullet 1 is visible
		SIGNAL visible2	:	std_logic;	--'1' when bullet 2 is visible

		SIGNAL life1		:	integer;	--decay life of bullet 1
		SIGNAL life2		:	integer;	--decay life of bullet 2

		signal ship_x		:	integer range 0 to 868;	--ship x coordinate
		signal ship_y		:	integer range 0 to 512;	--ship y coordinate

		SIGNAL bul_x1		:	integer range 0 to 868;	--bullet1 x coordinate
		SIGNAL bul_y1		:	integer range 0 to 512;	--bullet1 y coordinate
		SIGNAL bul_x2		:	integer range 0 to 868;	--bullet2 x coordinate
		SIGNAL bul_y2		:	integer range 0 to 512;	--bullet2 y coordinate

		SIGNAL bul_speed_x1		: integer;	--bullet1 x speed
		SIGNAL bul_speed_y1		: integer;	--bullet1 y speed
		SIGNAL bul_speed_x2		: integer;	--bullet2 x speed
		SIGNAL bul_speed_y2		: integer;	--bullet2 y speed

		--asteroid coordinates
		SIGNAL ast_x1		: integer range 0 to 868 :=0;
		SIGNAL ast_y1		: integer range 0 to 512 :=0;
		SIGNAL ast_x2		: integer range 0 to 868 :=600;
		SIGNAL ast_y2		: integer range 0 to 512 :=0;
		SIGNAL ast_x3		: integer range 0 to 868 :=0;
		SIGNAL ast_y3		: integer range 0 to 512 :=456;
		SIGNAL ast_x4		: integer range 0 to 868 :=0;
		SIGNAL ast_y4		: integer range 0 to 512 :=2;
		SIGNAL ast_x5		: integer range 0 to 868 :=67;
		SIGNAL ast_y5		: integer range 0 to 512 :=207;

		SIGNAL hit_1		:	std_logic;	--equals '1' if ast_1 is destroyed
		SIGNAL hit_2		:	std_logic;	--equals '1' if ast_2 is destroyed
		SIGNAL hit_3		:	std_logic;	--equals '1' if ast_3 is destroyed
		SIGNAL hit_4		:	std_logic;	--equals '1' if ast_4 is destroyed
		SIGNAL hit_5		:	std_logic;	--equals '1' if ast_5 is destroyed

		SIGNAL dir			: natural;	--direction the ship is facing from 0 to 7
		SIGNAL reset		:	std_logic;	--equals '1' if the ship is hit or player resets game

		SIGNAL delay		: integer;	--timer to reset game after collision
		SIGNAL delay_1		: integer;	--timer to reset asteroid 1 after hit by bullet
		SIGNAL delay_2		: integer;	--timer to reset asteroid 2 after hit by bullet
		SIGNAL delay_3		: integer;	--timer to reset asteroid 3 after hit by bullet
		SIGNAL delay_4		: integer;	--timer to reset asteroid 4 after hit by bullet
		SIGNAL delay_5		: integer;	--timer to reset asteroid 5 after hit by bullet
		SIGNAL score		: integer;	--game score, +1 for every asteroid hit

		SIGNAL high_score		: integer;	--high score
		SIGNAL rand_1		: integer;	--random counter
		SIGNAL rand_2		: integer;	--random counter

BEGIN
	PROCESS(disp_ena, row, column, ship_x, ship_y, clk2, clk_control)
	
	variable   timer		   : integer range MIN_COUNT to MAX_COUNT;
	
	BEGIN

	--Global clock control
	IF (clk_control'EVENT AND clk_control = '1') then
		timer:=timer+1;
	
	--Key inputs
	IF(key_right='1') THEN
		 go_right<='1';
	END IF;
	
	IF(key_left='1') THEN
		 go_left<='1';
	END IF;
	
	IF(key_up='1') THEN
		 go_up<='1';
	END IF;
	
	IF(key_down='1') THEN
		 go_down<='1';
	END IF;
	
	fire<='0';
	IF(shoot='1') THEN
		fire<='1';
	END IF;
	
	--Asteroid movement
	IF(timer=1) THEN
				ast_x1<=ast_x1+2*ast_speed;		
				ast_y1<=ast_y1+ast_speed+rand_2;
				ast_x2<=ast_x2+ast_speed;		
				ast_y2<=ast_y2-2*ast_speed;
				ast_x3<=ast_x3-ast_speed;		
				ast_y3<=ast_y3-ast_speed;
				ast_x4<=ast_x4+rand_1;		
				ast_y4<=ast_y4;
				ast_x5<=ast_x5-ast_speed+rand_1;		
				ast_y5<=ast_y5+2*ast_speed+rand_1-rand_2;
	END IF;
	
	--Ship movement
	IF(timer=1) THEN
		IF(go_right='1') THEN
				ship_x<=ship_x+ship_speed;
		ELSIF(go_left='1') THEN	
				ship_x<=ship_x-ship_speed;
		END IF;
		
		IF(go_up='1') THEN
				ship_y<=ship_y-ship_speed;
		ELSIF(go_down='1') THEN
				ship_y<=ship_y+ship_speed;
		END IF;
	
	
		--Assigns value to dir, the ship direction
		IF(go_right='1') THEN
			IF(go_up='1') THEN
				dir<=dir_up_right;
			ELSIF(go_down='1') THEN
				dir<=dir_down_right;
			ELSE
				dir<=dir_right;
			END IF;
		
		ELSIF(go_left='1') THEN
			IF(go_up='1') THEN
				dir<=dir_up_left;
			ELSIF(go_down='1') THEN
				dir<=dir_down_left;
			ELSE
				dir<=dir_left;
			END IF;
			
		ELSIF(go_up='1') THEN
			dir<=dir_up;
			
		ELSIF(go_down='1') THEN
			dir<=dir_down;
		END IF;
		
		--resets key values
		go_right<='0';
		go_left<='0';
		go_up<='0';
		go_down<='0';
	END IF;
	

	--Detects if bullets hit asteroid 1
	IF((bul_x1-ast_x1)*(bul_x1-ast_x1)+(bul_y1-ast_y1)*(bul_y1-ast_y1)<30*30 AND hit_1='0' AND visible1='1') THEN
		hit_1<='1';
		delay_1<=0;
		score<=score+1;
	
	ELSIF((bul_x2-ast_x1)*(bul_x2-ast_x1)+(bul_y2-ast_y1)*(bul_y2-ast_y1)<30*30 AND hit_1='0' AND visible2='1') THEN
		hit_1<='1';
		delay_1<=0;
		score<=score+1;
	END IF;

	IF(hit_1='1' AND timer=1) THEN
		delay_1<=delay_1+1;
		IF(delay_1>50) THEN
			hit_1<='0';
		END IF;
	END IF;


	--Detects if bullets hit asteroid 2
	IF((bul_x1-ast_x2)*(bul_x1-ast_x2)+(bul_y1-ast_y2)*(bul_y1-ast_y2)<30*30 AND hit_2='0' AND visible1='1') THEN
		hit_2<='1';
		delay_2<=0;
		score<=score+1;
	ELSIF((bul_x2-ast_x2)*(bul_x2-ast_x2)+(bul_y2-ast_y2)*(bul_y2-ast_y2)<30*30 AND hit_2='0' AND visible2='1') THEN
		hit_2<='1';
		delay_2<=0;
		score<=score+1;
	END IF;

	IF(hit_2='1' AND timer=1) THEN
		delay_2<=delay_2+1;
		IF(delay_2>50) THEN
			hit_2<='0';
		END IF;
	END IF;


	--Detects if bullets hit asteroid 3
	IF((bul_x1-ast_x3)*(bul_x1-ast_x3)+(bul_y1-ast_y3)*(bul_y1-ast_y3)<30*30 AND hit_3='0' AND visible1='1') THEN
		hit_3<='1';
		delay_3<=0;
		score<=score+1;
	ELSIF((bul_x2-ast_x3)*(bul_x2-ast_x3)+(bul_y2-ast_y3)*(bul_y2-ast_y3)<30*30 AND hit_3='0' AND visible2='1') THEN
		hit_3<='1';
		delay_3<=0;
		score<=score+1;
	END IF;
	
	IF(hit_3='1' AND timer=1) THEN
		delay_3<=delay_3+1;
		IF(delay_3>50) THEN
			hit_3<='0';
		END IF;
	END IF;

		--Detects if bullets hit asteroid 4
	IF((bul_x1-ast_x4)*(bul_x1-ast_x4)+(bul_y1-ast_y4)*(bul_y1-ast_y4)<30*30 AND hit_4='0' AND visible1='1') THEN
		hit_4<='1';
		delay_4<=0;
		score<=score+1;
	ELSIF((bul_x2-ast_x4)*(bul_x2-ast_x4)+(bul_y2-ast_y4)*(bul_y2-ast_y4)<30*30 AND hit_4='0' AND visible2='1') THEN
		hit_4<='1';
		delay_4<=0;
		score<=score+1;
	END IF;
	
	IF(hit_3='1' AND timer=1) THEN
		delay_3<=delay_3+1;
		IF(delay_3>50) THEN
			hit_3<='0';
		END IF;
	END IF;
	
		--Detects if bullets hit asteroid 5
	IF((bul_x1-ast_x5)*(bul_x1-ast_x5)+(bul_y1-ast_y5)*(bul_y1-ast_y5)<30*30 AND hit_5='0' AND visible1='1') THEN
		hit_5<='1';
		delay_5<=0;
		score<=score+1;
	ELSIF((bul_x2-ast_x5)*(bul_x2-ast_x5)+(bul_y2-ast_y5)*(bul_y2-ast_y5)<30*30 AND hit_5='0' AND visible2='1') THEN
		hit_5<='1';
		delay_5<=0;
		score<=score+1;
	END IF;
	
	IF(hit_5='1' AND timer=1) THEN
		delay_5<=delay_3+1;
		IF(delay_5>50) THEN
			hit_5<='0';
		END IF;
	END IF;
	
	--Sets high score
	IF(high_score<score) THEN
		high_score<=score;
	END IF;

	--Collision detection
	IF((abs(ship_x-ast_x1)<30 AND abs(ship_y-ast_y1)<30 AND hit_1='0') OR (abs(ship_x-ast_x2)<30 AND abs(ship_y-ast_y2)<30 AND hit_2='0') OR (abs(ship_x-ast_x3)<30 AND abs(ship_y-ast_y3)<30 AND hit_3='0') OR (abs(ship_x-ast_x4)<30 AND abs(ship_y-ast_y4)<30 AND hit_4='0') OR (abs(ship_x-ast_x5)<30 AND abs(ship_y-ast_y5)<30 AND hit_5='0')) THEN
		reset<='1';
		delay<=0;
	END IF;

	IF(reset_switch='1') THEN
		reset<='1';
	END IF;
	
	IF(rand_1>5) THEN
		rand_1<=0;
	END IF;
	
	IF(rand_2>3) THEN
		rand_2<=0;
	END IF;
	
	IF(reset='1' AND timer=1) then
		delay<=delay+1;

		--Game reset
		IF(delay>5) THEN
			rand_1<=rand_1+1;
			rand_2<=rand_2+1;
			reset<='0';
			ship_x<=868/2;	--middle of the screen
			ship_y<=512/2;	--middle of the screen
			ast_x1<=rand_1*20+rand_2*4;
			ast_y1<=300+rand_1;
			ast_x2<=0+rand_2*100;
			ast_y2<=100-rand_2*5;
			ast_x3<=rand_2*60;
			ast_y3<=500-rand_1*20;
			ast_x4<=200+rand_2+rand_1*8;
			ast_y4<=100+rand_2*8+rand_1*23;
			ast_x5<=60+rand_1*50-rand_2*10;
			ast_y5<=50+rand_2*75;
			score<=0;	--resets score
		END IF;
	END IF;
	
	--Bullet firing
	IF(fire='1') THEN

		--bullet 1 creation
		IF(visible1='0') THEN
			visible1<='1';	--sets the bullet to be visible
			life1<=0;
			bul_x1<=ship_x;
			bul_y1<=ship_y;
			
			case dir is
			when dir_right =>
				bul_speed_x1<=30;
				bul_speed_y1<=0;
			when dir_up_right =>
				bul_speed_x1<=30;
				bul_speed_y1<=-30;
			when dir_up =>
				bul_speed_x1<=0;
				bul_speed_y1<=-30;
			when dir_up_left =>
				bul_speed_x1<=-30;
				bul_speed_y1<=-30;
			when dir_left =>
				bul_speed_x1<=-30;
				bul_speed_y1<=0;
			when dir_down_left =>
				bul_speed_x1<=-30;
				bul_speed_y1<=30;
			when dir_down =>
				bul_speed_x1<=0;
				bul_speed_y1<=30;
			when others =>
				bul_speed_x1<=30;
				bul_speed_y1<=30;
			end case;
		END IF;

		--bullet 2 creation
		IF(visible2='0' AND visible1='1'AND life1>5) THEN
			
			visible2<='1';
			bul_x2<=ship_x;
			bul_y2<=ship_y;
			life2<=0;	

			
			case dir is
			when dir_right =>
				bul_speed_x2<=30;
				bul_speed_y2<=0;
			when dir_up_right =>
				bul_speed_x2<=30;
				bul_speed_y2<=-30;
			when dir_up =>
				bul_speed_x2<=0;
				bul_speed_y2<=-30;
			when dir_up_left =>
				bul_speed_x2<=-30;
				bul_speed_y2<=-30;
			when dir_left =>
				bul_speed_x2<=-30;
				bul_speed_y2<=0;
			when dir_down_left =>
				bul_speed_x2<=-30;
				bul_speed_y2<=30;
			when dir_down =>
				bul_speed_x2<=0;
				bul_speed_y2<=30;
			when others =>
				bul_speed_x2<=30;
				bul_speed_y2<=30;
			end case;
		END IF;
	END IF;
--	fire<='0';
	
	--bullet 1 movement
	IF(visible1='1') THEN
		IF(timer=1) THEN
			life1<=life1+1;
			bul_x1<=bul_x1+bul_speed_x1;
			bul_y1<=bul_y1+bul_speed_y1;
		END IF;
		
		--bullet decay
		IF(life1>=15) THEN
			visible1<='0';
		END IF;
		
	END IF;
		
	--bullet 2 movement
	IF(visible2='1') THEN
		IF(timer=1) THEN
			life2<=life2+1;
			bul_x2<=bul_x2+bul_speed_x2;
			bul_y2<=bul_y2+bul_speed_y2;
		END IF;
		
		--bullet decay
		IF(life2>=15) THEN
			visible2<='0';
		END IF;
		
	END IF;
	
	--screen display

		--Downloaded code
		IF(disp_ena = '1') THEN		--display time
		--

			--sets screen red during collision
			IF(reset='1') THEN
				red <= (OTHERS => '1');
				green	<= (OTHERS => '0');
				blue <= (OTHERS => '0');	
			ELSE
			--screen is normally black
				red <= (OTHERS => '0');
				green	<= (OTHERS => '0');
				blue <= (OTHERS => '0');	
			END IF;
			
			--Hides graphics when game is reseting
			IF(reset='0') THEN
			
				--Displays bullet1	
				IF(visible1='1' AND row > bul_y1-3 AND row < bul_y1+3 AND column > bul_x1-3 AND column < bul_x1+3) THEN
					red <= (OTHERS => '0');
					green	<= (OTHERS => '1');
					blue <= (OTHERS => '0');
				END IF;
				
				--Displays bullet2
				IF(visible2='1' AND row > bul_y2-3 AND row < bul_y2+3 AND column > bul_x2-3 AND column < bul_x2+3) THEN
					red <= (OTHERS => '0');
					green	<= (OTHERS => '1');
					blue <= (OTHERS => '0');
				END IF;
				
				--displays ship blue
				IF(row > ship_y-10 AND row < ship_y+10 AND column > ship_x-10 AND column < ship_x+10) THEN
					red <= (OTHERS => '0');
					green	<= (OTHERS => '0');
					blue <= (OTHERS => '1');
				
					--displays fire directions
					IF(dir=dir_right AND row > ship_y-5 AND row < ship_y+5 AND column > ship_x+5 AND column < ship_x+15) THEN
						red <= (OTHERS => '1');
						green	<= (OTHERS => '0');
						blue <= (OTHERS => '0');
					END IF;
					IF(dir=dir_up_right AND row > ship_y-15 AND row < ship_y-5 AND column > ship_x+5 AND column < ship_x+15) THEN
						red <= (OTHERS => '1');
						green	<= (OTHERS => '0');
						blue <= (OTHERS => '0');
					END IF;
					IF(dir=dir_up AND row > ship_y-15 AND row < ship_y-5 AND column > ship_x-5 AND column < ship_x+5) THEN
						red <= (OTHERS => '1');
						green	<= (OTHERS => '0');
						blue <= (OTHERS => '0');
					END IF;
					IF(dir=dir_up_left AND row > ship_y-15 AND row < ship_y-5 AND column > ship_x-15 AND column < ship_x-5) THEN
						red <= (OTHERS => '1');
						green	<= (OTHERS => '0');
						blue <= (OTHERS => '0');
					END IF;
					IF(dir=dir_left AND row > ship_y-5 AND row < ship_y+5 AND column > ship_x-15 AND column < ship_x-5) THEN
						red <= (OTHERS => '1');
						green	<= (OTHERS => '0');
						blue <= (OTHERS => '0');
					END IF;
					IF(dir=dir_down_left AND row > ship_y+5 AND row < ship_y+15 AND column > ship_x-15 AND column < ship_x-5) THEN
						red <= (OTHERS => '1');
						green	<= (OTHERS => '0');
						blue <= (OTHERS => '0');
					END IF;
					IF(dir=dir_down AND row > ship_y+5 AND row < ship_y+15 AND column > ship_x-5 AND column < ship_x+5) THEN
						red <= (OTHERS => '1');
						green	<= (OTHERS => '0');
						blue <= (OTHERS => '0');
					END IF;
					IF(dir=dir_down_right AND row > ship_y+5 AND row < ship_y+15 AND column > ship_x+5 AND column < ship_x+15) THEN
						red <= (OTHERS => '1');
						green	<= (OTHERS => '0');
						blue <= (OTHERS => '0');
					END IF;
				END IF;
			
				--Displays asteroid 1
				IF(row > ast_y1-20 AND row < ast_y1+20 AND column > ast_x1-20 AND column < ast_x1+20 AND hit_1='0')THEN
					red <= (OTHERS => '1');
					green	<= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

				--Displays asteroid 2
				IF(row > ast_y2-20 AND row < ast_y2+20 AND column > ast_x2-20 AND column < ast_x2+20 AND hit_2='0')THEN
					red <= (OTHERS => '1');
					green	<= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

				--Displays asteroid 3
				IF(row > ast_y3-20 AND row < ast_y3+20 AND column > ast_x3-20 AND column < ast_x3+20 AND hit_3='0')THEN
					red <= (OTHERS => '1');
					green	<= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;
				
				--Displays asteroid 4
				IF(row > ast_y4-20 AND row < ast_y4+20 AND column > ast_x4-20 AND column < ast_x4+20 AND hit_4='0')THEN
					red <= (OTHERS => '1');
					green	<= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;
				
				--Displays asteroid 3
				IF(row > ast_y5-20 AND row < ast_y5+20 AND column > ast_x5-20 AND column < ast_x5+20 AND hit_5='0')THEN
					red <= (OTHERS => '1');
					green	<= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;
	
				--Displays yellow score bar at the top of the screen
				IF(row > 0 AND row < 10 AND column > 10 AND column < 10+score*5) THEN
					red <= (OTHERS => '1');
					green	<= (OTHERS => '1');
					blue <= (OTHERS => '0');
				END IF;
				
				--Displays green high score bar at the top of the screen
				IF(row > 0 AND row < 10 AND column > 9+high_score*5 AND column < 11+high_score*5) THEN
					red <= (OTHERS => '0');
					green	<= (OTHERS => '1');
					blue <= (OTHERS => '0');
				END IF;
			END IF;
			
		--Downloaded code
		ELSE								--blanking time
			red <= (OTHERS => '0');
			green <= (OTHERS => '0');
			blue <= (OTHERS => '0');
		END IF;
	END IF;
	--	

	END PROCESS;
END behavior;