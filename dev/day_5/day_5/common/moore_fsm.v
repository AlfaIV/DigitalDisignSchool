`include "config.vh"

module moore_fsm
(
    input  clk,
    input  reset,
    input  en, //clocling
    input  a, //button
    output y
);

    parameter [2:0] S0 = 0, S1 = 1, S2 = 2, S3 = 3, S4 = 4, S5 = 5;

    reg [1:0] state, next_state;

    // State register

    always @ (posedge clk or posedge reset)
        if (reset)
            state <= S0;
        else if (en)
            state <= next_state;

    // Next state logic
	 /*
    always @*
        case (state)
        
        S0:
            if (a)
                next_state = S0;
            else
                next_state = S1;

        S1:
            if (a)
                next_state = S2;
            else
                next_state = S1;

        S2:
            if (a)
                next_state = S0;
            else
                next_state = S1;

        default:

            next_state = S0;

        endcase
    */
	 
	 always @*
        case (state)
        
        S0:
            if (a)
                next_state = S1;
            else
                next_state = S0;

        S1:
            if (a)
                next_state = S2;
            else
                next_state = S1;

        S2:
            if (a)
                next_state = S2;
            else
                next_state = S0;

        default:

            next_state = S0;

        endcase
    
    // Output logic based on current state

    assign y = (state == S2);

endmodule