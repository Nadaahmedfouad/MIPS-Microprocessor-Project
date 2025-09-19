-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT <component name>
          PORT(
                  <port1> : IN std_logic;
                  <port2> : IN std_logic_vector(3 downto 0);       
                  <port3> : OUT std_logic_vector(3 downto 0)
                  );
          END COMPONENT;

          SIGNAL <signal1> :  std_logic;
          SIGNAL <signal2> :  std_logic_vector(3 downto 0);
          

  BEGIN

  -- Component Instantiation
          uut: <component name> PORT MAP(
                  <port1> => <signal1>,
                  <port3> => <signal2>
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        begin		
		data_in <= "00000000000000000000000000000001";
        wait for 10 ns;
		  
		  data_in <= "11111111111111111111111111111111";
        wait for 10 ns;
		  
		  data_in <= "01010101010101010101010101010101";
        wait for 10 ns;
		  
		  data_in <= "10101010101010101010101010101010";
        wait for 10 ns;
	
      -- hold reset state for 100 ns.
      wait for 100 ns;	

     END PROCESS tb;
  --  End Test Bench 

  END;
