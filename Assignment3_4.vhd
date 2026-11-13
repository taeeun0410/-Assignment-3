
library ieee;
use ieee.std_logic_1164.all;

entity Assignment3_4 is
    port (
        j   : in  std_logic;
        k   : in  std_logic;
        clk : in  std_logic;
        q   : out std_logic;
        qn  : out std_logic
    );
end entity Assignment3_4;

architecture behavioral of Assignment3_4 is
    signal q_state : std_logic;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if j = '0' and k = '0' then
                null;                -- Hold
            elsif j = '0' and k = '1' then
                q_state <= '0';      -- Reset
            elsif j = '1' and k = '0' then
                q_state <= '1';      -- Set
            elsif j = '1' and k = '1' then
                q_state <= not q_state; -- Toggle
            end if;
        end if;
    end process;

    q  <= q_state;
    qn <= not q_state;
end architecture behavioral;
