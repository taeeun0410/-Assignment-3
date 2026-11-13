
library ieee;
use ieee.std_logic_1164.all;

entity Assignment3_3 is
    port (
        d   : in  std_logic;
        clk : in  std_logic;
        q   : out std_logic;
        qn  : out std_logic
    );
end entity Assignment3_3;

architecture behavioral of Assignment3_3 is
    signal q_state : std_logic;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            q_state <= d;
        end if;
    end process;

    q  <= q_state;
    qn <= not q_state;
end architecture behavioral;