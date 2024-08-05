`include "./mealy.v"
`include "./moore.v"

module testbench;
	reg clk, head, left;
  wire front, rotate;

  mealy_robot MR(clk, head, left, front, rotate);
  
  initial begin
    clk = 0;
    step(0,0);
    step(0,0);
    step(1,0);
    step(0,0);
    step(0,0);
    step(0,1);
    step(0,1);
    step(0,1);
    step(0,1);
    step(1,1);
    step(1,0);
    step(0,0);
    step(0,1);
    step(1,0);
    step(0,0);
    step(1,1);
    step(1,0);
    step(0,0);
    step(0,1);
    step(0,1);
    step(0,1);
    step(0,0);
    step(0,0);
    step(0,1);
    step(0,0);
    step(0,0);
    step(1,1);
    step(1,0);
    step(0,0);
    step(0,1);
    step(0,1);
    step(0,1);
    step(0,1);
    step(1,1);
    step(1,0);
    step(0,1);
    step(0,0);
    step(0,0);
    step(0,1);
    step(1,1);
    step(1,0);
    step(0,0);
    step(0,1);
    step(1,1);
    step(1,0);
    step(0,0);
    step(0,1);
    step(0,0);
    step(0,0);
    step(0,1);
    step(0,1);
    step(0,0);
    step(0,0);
    step(1,1);
    step(1,0);
    step(0,0);
    step(0,1);
    step(0,1);
    step(0,1);
    step(1,1);
    step(1,0);
    step(0,0);
    step(0,1);
    step(0,1);
    step(1,1);
    step(1,0);
    step(0,1);
    step(0,1);
    step(1,0);
    step(0,0);
    step(0,1);
    step(0,0);
    step(0,0);
    step(0,1);
    step(0,1);
    step(0,1);
    step(1,0);
    step(0,0);
    step(0,1);
    step(0,1);
    step(0,1);
    step(0,0);
    step(0,0);
    step(0,1);
    step(1,1);
    step(1,0);
    step(0,0);
    step(0,1);
    step(0,1);
    step(1,1);
    step(1,0);
    step(0,0);
    step(0,1);
    step(0,1);
    step(0,1);
    step(1,1);
    step(1,0);
    step(0,0);
    step(0,1);
  end
  
  task toggle_clock; begin
    #1 clk = ~clk;
  end endtask

  task step(input h, l); begin
    head = h;
    left = l;
    toggle_clock;
    display;
    toggle_clock;
  end endtask
  	  
  task display;
    $display("head:%b,left:%b,front:%b,rotate:%b", head, left, front, rotate);
  endtask
endmodule
