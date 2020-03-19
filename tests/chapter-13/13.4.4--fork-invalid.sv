/*
:name: function_fork_invalid
:description: function invalid fork test
:should_fail_because: only fork-join_none is permitted inside a function
:tags: 13.4.4
:type: simulation
*/
module top();

function int fun(int val);
	fork
		$display("abc");
		$display("def");
	join_any
	return val + 2;
endfunction

initial
	$display("$d", fun(2));

endmodule
