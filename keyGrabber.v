module keyGrabber(output [55:0] key1, key2);
    integer outfile0, outfile1;
    reg [55:0] line1;
    reg [55:0] line2;

    initial begin
        outfile0=$fopen("key1.txt","r");
        outfile1=$fopen("key2.txt","r");

        while (!$feof(outfile0)) begin
            $fscanf(outfile0,"%h\n",line1);
        end
        $fclose(outfile0);

        while (!$feof(outfile1)) begin
            $fscanf(outfile1,"%h\n",line2);
        end
        $fclose(outfile1);

        // $readmemh("key1.txt",key1);
        // $readmemh("key1.txt",key2);

    end
endmodule
