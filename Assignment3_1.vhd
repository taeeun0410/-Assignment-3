
library ieee;
use ieee.std_logic_1164.all;

entity Assignment3_1 is
    port (
        s  : in  std_logic;
        r  : in  std_logic;
        q  : out std_logic;
        qn : out std_logic
    );
end entity Assignment3_1;

architecture behavioral of Assignment3_1 is
    signal q_state  : std_logic;
    signal qn_state : std_logic;
begin
    process(s, r)
    begin
        if s = '1' and r = '0' then
            q_state  <= '1';
            qn_state <= '0';

        elsif s = '0' and r = '1' then
            q_state  <= '0';
            qn_state <= '1';

        elsif s = '1' and r = '1' then
            q_state  <= '0';
            qn_state <= '0';
        end if;
    end process;

    q  <= q_state;
    qn <= qn_state;
end architecture behavioral;
