classdef NandGate < Component
    %NANDGATE Encapsulates the behaviour of a NAND gate
    
    methods        
        function obj = NandGate(position)
            obj@Component(position);
            obj.input_pins  = logical([0 0]);
            obj.output_pins = logical([0]);
            
            % encode shape
            span = -3:0.1:3;
            obj.shape = {[  % base tub
                -3 -3  3  3
                 4  2  2  4
            ], [            % top curve
                build_arc([3; 4], [-3; 4], 3)
            ], [            % input pins
                [-2; 0], [-2; 2]
            ], [
                [2; 0], [2; 2]
            ], [            % output pin
                [0; 8], [0; 8]
            ], [            % not circle
                build_circle([0; 7.5], 0.5)
            ]};
        end

        function update(obj)
            %UPDATE Updates the gate's output
            obj.output_pins(1) = ~(obj.input_pins(1) && obj.input_pins(2));
        end
    end
end
