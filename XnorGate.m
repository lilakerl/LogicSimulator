classdef XnorGate < Component
    %XNORGATE Encapsulates the behaviour of an XNOR gate

    methods
        function obj = XnorGate()
            obj.input_pins  = logical([0 0]);
            obj.output_pins = logical([0]);
        end

        function update(obj)
            %UPDATE Updates the gate's output
            obj.output_pins(1) = ~xor(obj.input_pins(1), obj.input_pins(2));
        end
    end
end
