----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/24/2018 01:23:59 PM
-- Design Name: 
-- Module Name: PWM_Driver - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Single channel, customizable PWM driver. Set sys_clk to clk's frequency in Hz
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity PWM_Driver is
    generic (
		sys_clk         : INTEGER := 50_000_000; --system clock frequency in Hz
        pwm_freq        : INTEGER := 100_000;    --PWM switching frequency in Hz
        bits_resolution : INTEGER := 16          --bits of resolution setting the duty cycle     
	);

port (
        duty      : IN STD_LOGIC_VECTOR(bits_resolution-1 DOWNTO 0);
		clk       : IN STD_LOGIC;
		pwm_out   : OUT STD_LOGIC;
		enable   : IN  STD_LOGIC                                    --asynchronous reset
	);
end PWM_Driver;

architecture Behavioral of PWM_Driver is

    CONSTANT period  : INTEGER := sys_clk/pwm_freq;
    SIGNAL count     : INTEGER RANGE 0 TO period - 1 := 0;
    SIGNAL half_duty    :  INTEGER RANGE 0 TO period/2 := 0;
    SIGNAL half_duty_new  :  INTEGER RANGE 0 TO period/2 := 0;
    SIGNAL pwm_out_buf : std_logic := '0';
    SIGNAL disabled : std_logic := '1';
        
begin

PROCESS(clk, enable, disabled)
      BEGIN
        IF(enable = '0' and pwm_out_buf = '0') THEN
            disabled <= '1';
        END IF;
        
        IF(enable = '1' and disabled = '1' and pwm_out_buf = '0') THEN
            disabled <='0';
        END IF;
      
        IF(disabled = '1') THEN                                             --asynchronous reset
            count <= 0;                                            --clear counter
            pwm_out <= '0';                                        --clear pwm outputs    
            pwm_out_buf <= '0';
        ELSIF(clk'EVENT AND clk = '1') THEN                                --rising system clock edge        
            half_duty_new <= conv_integer(duty)*period/(2**bits_resolution)/2;   --determine clocks in 1/2 duty cycle
            
            IF(count = period - 1) THEN                       --end of period reached
              count <= 0;                                                         --reset counter
              half_duty <= half_duty_new;                                         --set most recent duty cycle value
            ELSE                                                                   --end of period not reached
              count <= count + 1;                                              --increment counter
            END IF;
         
            IF(count = half_duty) THEN                                       --phase's falling edge reached
                pwm_out_buf <= '0';
                pwm_out <= '0';                                                     --deassert the pwm output     
            ELSIF(count = period - half_duty) THEN                           --phase's rising edge reached
                pwm_out_buf <= '1';
                pwm_out <= '1';                                                     --assert the pwm output
        END IF;
      END IF;
    END PROCESS;

end Behavioral;
