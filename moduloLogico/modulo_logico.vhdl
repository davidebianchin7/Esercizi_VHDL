-- Dichiarazione delle librerie
library ieee;
use ieee.std_logic_1164.all;

-- Definizione dell'entity: Modulo Logico
-- Prende due ingressi a 2 bit (A_in, B_in) e produce tre uscite a 2 bit (Y_and, Y_or, Y_xor)
entity Modulo_Logico is
	port (
		A_in, B_in : in std_logic_vector(1 downto 0);
		Y_and, Y_or, Y_xor : out std_logic_vector(1 downto 0)
	     );
end entity;

-- Definizione dell'architecture: behavioral
-- Implementa la logica combinatoria delle operazioni AND, OR, XOR bit-wise
architecture behavioral of Modulo_Logico is
begin 
	
	Y_and(1) <= A_in(1) and B_in(1);
	Y_and(0) <= A_in(0) and B_in(0);

	Y_or(1)  <= A_in(1) or B_in(1);
	Y_or(0)  <= A_in(0) or B_in(0);

	Y_xor(1) <= A_in(1) xor B_in(1);
	Y_xor(0) <= A_in(0) xor B_in(0);

end architecture;
