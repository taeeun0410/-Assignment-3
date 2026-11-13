
library ieee;
use ieee.std_logic_1164.all;

entity Assignment3_5 is
    port (
        d   : in  std_logic;
        clk : in  std_logic;
        set : in  std_logic;
        clr : in  std_logic;
        q   : out std_logic;
        qn  : out std_logic
    );
end entity Assignment3_5;

architecture behavioral of Assignment3_5 is
    signal q_state : std_logic;
begin

    process(clk, set, clr)
    begin
        if clr = '1' then
            q_state <= '0';

        elsif set = '1' then
            q_state <= '1';

        elsif rising_edge(clk) then
            q_state <= d;
        end if;
    end process;

    q  <= q_state;
    qn <= not q_state;

end architecture behavioral;
