----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:44:56 05/03/2024 
-- Design Name: 
-- Module Name:    MIPS - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MIPS is
    Port ( ClkM: in  STD_LOGIC);
end MIPS;

architecture Behavioral of MIPS is



component ALUUNITCONTROL is
    Port ( ALU_OUTPUT : out  STD_LOGIC_VECTOR (3 downto 0);
           ALU_OOP : in  STD_LOGIC_VECTOR (1 downto 0);
           ALU_FUNC : in  STD_LOGIC_VECTOR (5 downto 0)
			  );
end component;


component  Adder is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUop : in  STD_LOGIC_VECTOR (3 downto 0);
           ZERO : out  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--component BranchAdder is --maloosh lazma
  --  Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
    --       B : in  STD_LOGIC_VECTOR (31 downto 0);
      --     result : out  STD_LOGIC_VECTOR (31 downto 0));
--end component;

component ControlUnit is
    Port ( Instruction : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDest : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           AluOp : out  STD_LOGIC_VECTOR (1 downto 0);
           MemWrite : out  STD_LOGIC;
           AluSrc : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC);
end component;


component DataMemory is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           readdata : out  STD_LOGIC_VECTOR (31 downto 0);
           writedata : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           memread : in  STD_LOGIC;
           memwrite : in  STD_LOGIC);
end component;

component InstructionMemory is
    Port ( PC : in  STD_LOGIC_VECTOR (31 downto 0);
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Mux_32 is
    Port ( in0 : in  STD_LOGIC_VECTOR (31 downto 0);
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC;
           o : out  STD_LOGIC_VECTOR (31 downto 0));
end component;




--mux bta3 yekhtar rs wala rd
component Mux_5 is 
    Port ( in0 : in  STD_LOGIC_VECTOR (4 downto 0);
           in1 : in  STD_LOGIC_VECTOR (4 downto 0);
           s : in  STD_LOGIC;
           o : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component Pc is
    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC);
end component;


--component PCadder is
  --  Port ( Instruction : in  STD_LOGIC_VECTOR (31 downto 0);
    --       NewInstruction : out  STD_LOGIC_VECTOR (31 downto 0));
--end component;

component RegisterFile is
			  Port ( ReadReg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           ReadReg2 : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteReg : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteData : in  STD_LOGIC_VECTOR (31 downto 0);
           Readdata1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Readdata2 : out  STD_LOGIC_VECTOR (31 downto 0);
           Regwrite : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end component;

component ShiftLeft2 is
    Port ( Input : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component SignExtend is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component; 



----------------------
--ALU
	signal ALUinput1: std_logic_vector(31 downto 0);
	signal ALUinput2: std_logic_vector(31 downto 0);
	signal ALUoutput: std_logic_vector(31 downto 0);
	signal ALUzeroFlag: std_logic;
	signal ALUselecter: std_logic_vector(3 downto 0);--ghyart hena
	
	
	--PC 
	signal PCout: std_logic_vector(31 downto 0);--ghyart
	signal PCin: std_logic_vector (31 downto 0);--ghyrt
	signal AdderOut: std_logic_vector (31 downto 0);
	
	--Register File 
	signal inputInstruction: std_logic_vector (31 downto 0);
	signal readData2: std_logic_vector (31 downto 0);
	signal dataMemoryOut: std_logic_vector (31 downto 0);
	signal writeDataIn: std_logic_vector (31 downto 0);
	signal MUXregDstOut:std_logic_vector (4 downto 0);
	
	--Control Unit 
	signal regDst: std_logic;
	signal branchS: std_logic;
	signal memReadS: std_logic;
	signal memToRegS: std_logic;
	signal ALUopControlS: std_logic_vector (1 downto 0);
	signal memWriteS: std_logic;
	signal ALUSrcS: std_logic;
	signal RegWriteS: std_logic;
	
	--Sign Extend 
	signal signExtender: std_logic_vector (31 downto 0);
	
	--Shift Left 
	signal shiftLeft: std_logic_vector (31 downto 0);
	
	--PcMux 
	signal ALUoutputToPCMUX: std_logic_vector (31 downto 0);
	signal PCMUXcontrol: std_logic;

begin
pcount : Pc port map(
clk =>  ClkM,
input => PCin,
output => PCout
); --3and men component btaa3y Pc variable akeno esmo pc

pcadder:Adder port map (
		in1 => PCout,
		in2 => x"00000004",
		result => AdderOut
);

branchadder: Adder  port map (
      in1 => AdderOut,
		in2 => shiftLeft,---lesa
		result => ALUoutputToPCMUX
);

instructionmem: InstructionMemory port map(
		PC => PCout,
		Instruction => inputInstruction
);
           

controluni:ControlUnit port map (
		Instruction => inputInstruction (31 downto 26),
		RegDest => regDst,
		AluSrc => ALUSrcS,
		MemtoReg => memToRegS,
		Regwrite => RegWriteS,
		MemRead => memReadS,
		MemWrite => memWriteS,
		Branch => branchS,
		AluOp => ALUopControlS
);

muxregdst: Mux_5 port map (
		in0 => inputInstruction (20 downto 16),
		in1 => inputInstruction (15 downto 11),
		s => regDst,
		o => MUXregDstOut 
);

memorymux:Mux_32 port map (
		in0 =>ALUoutput ,
		in1 => dataMemoryOut,
		s => memToRegS,
		o => writeDataIn
);

alumux:Mux_32 port map (
		in0=> readData2,
		in1 => signExtender,
		s  => ALUSrcS,
		o  => ALUinput2 
);

PCMUXcontrol <= (branchS AND ALUzeroFlag);
	
pcmux: Mux_32 port map (
		in0 => AdderOut,
		in1 => ALUoutputToPCMUX,
		s => PCMUXcontrol,
		o => PCin
);

registerflemain:RegisterFile port map (
		Readdata1 => ALUinput1,
		Readdata2 => readData2,
		ReadReg1 => inputInstruction (25 downto 21),
		ReadReg2 => inputInstruction (20 downto 16),
		WriteReg  => MUXregDstOut,
		WriteData => writeDataIn,
		RegWrite => RegWriteS,
      clk => ClkM			
);

signextendmain: SignExtend port map (
		input => inputInstruction (15 downto 0),
		output => signExtender
);

ShiftLeftTwo:ShiftLeft2 port map(
		Input => signExtender,
		Output => shiftLeft
);

alucontrol:ALUUNITCONTROL port map(
		ALU_FUNC => inputInstruction (5 downto 0),
		ALU_OOP => ALUopControlS,
		ALU_OUTPUT => ALUselecter
);
--ghyrt khaletha Alu
ALU_Main: ALU port map(
		A => ALUinput1,
		B => ALUinput2,
		ALUop => ALUselecter,
		result => ALUoutput,
		ZERO => ALUzeroFlag
);
--khaletha Datamemory
Datamem:DataMemory port map(
		memread => memReadS,
		memwrite => memWriteS,
		writedata => readData2,
		Address => ALUoutput,
		readdata=> dataMemoryOut,
		clk => ClkM	
);

end Behavioral;

