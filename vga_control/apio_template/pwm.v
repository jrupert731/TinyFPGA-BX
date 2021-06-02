--10, 6, 4, 2

module pwmblock (input clk, input reset, input [31:0] increment, input endval, input [31:0] match, input mode, output [1:0] pwm, input pin);
  integer counter = 0;
  integer divs;
  always @ (posedge clk) begin
    if (counter < match%32)
      counter = counter + increment%32;
      pwm <= 1;
    else if (counter = divs)
      counter = 0;
      pwm <= 0;
    else
      counter = counter + increment%32;
      pwm <= 0;
  end
endmodule
