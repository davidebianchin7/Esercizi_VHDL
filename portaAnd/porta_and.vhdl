-- Dichiarazione delle librerie
library ieee;
use ieee.std_logic_1164.all;

-- Definizione dell'entity: interfaccia esterna della porta AND
entity porta_and is
	port (
		A : in std_logic; -- Ingresso 1
		B : in std_logic; -- Ingresso 2
		Y : out std_logic -- Uscita
	);
end entity porta_and;

-- Definizione dell'architecture: implementazione del comportamenteo della porta AND
architecture behavioral of porta_and is
begin
	-- Asegnazione concorrente: l'uscita Y è il risultato dell'AND logico tra A e B
	Y <= A and B;
end architecture behavioral;

