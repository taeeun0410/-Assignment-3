
library ieee;
use ieee.std_logic_1164.all;

entity Assignment3_2 is
    port (
        d  : in  std_logic;
        en : in  std_logic;
        q  : out std_logic;
        qn : out std_logic
    );
end entity Assignment3_2;

architecture behavioral of Assignment3_2 is
    signal q_state : std_logic;
begin
    process(d, en)
    begin
        if en = '1' then
            q_state <= d;
        end if;
    end process;

    q  <= q_state;
    qn <= not q_state;
end architecture behavioral;
