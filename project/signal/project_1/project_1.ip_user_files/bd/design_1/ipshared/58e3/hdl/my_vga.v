



// 640X480 @ 60Hz with a 148.5MHz pixel clock

`define H_ACTIVE		640
`define H_FRONT_PORCH	16
`define H_SYNCH			96	
`define H_BACK_PORCH	48	
`define H_TOTAL			( `H_SYNCH + `H_BACK_PORCH + `H_ACTIVE + `H_FRONT_PORCH ) 


`define V_ACTIVE		480	
`define V_FRONT_PORCH	11
`define V_SYNCH			2	 
`define V_BACK_PORCH	31	
`define V_TOTAL			 (`V_SYNCH + `V_BACK_PORCH +  `V_ACTIVE +`V_FRONT_PORCH )	


module my_vga (
        input pixel_clock,	rst_i,
        output  reg 	h_synch,	v_synch,
        output reg 	dp_en,
        output reg  [11:0]	line_count  ,
        output reg  [11:0]  pixel_count
    );

    /*
      1),��2����������һ��������¼���ڵ����ص�ʱ������
      һ��������¼������
      ���������������˸�λ�ź��ⲻ�ܱ������Ӱ�죬
      ��һֱ�Լ�ѭ���ۼӡ�
    */

    always @(posedge pixel_clock)
        if ( rst_i )pixel_count<=0;
        else if (pixel_count == (`H_TOTAL-1))pixel_count<=0;
        else pixel_count<=pixel_count+1;

    always @(posedge pixel_clock)
        if (rst_i)line_count<=0;
        else if (pixel_count==(`H_TOTAL-1)) begin

            if ( line_count==(`V_TOTAL-1))line_count<=0;
            else line_count<=line_count+1;

        end

    /*
    2��,��������������ֵ�Ͷ�Ӧ��ͼ��������λ�á�
    �����ҵ�ʵ��Ҫ��ʾ�����Ӧ�����ؼ��������м�����
    ����ֵ��ֻҪ�����������������������
    ��������ʾ������������������R,G,B�����Ϊ0����
    */
    reg h_en  ;
    always@(posedge pixel_clock)
        if (pixel_count == (`H_TOTAL-1) )h_en<=1;
        else if (pixel_count==(`H_ACTIVE-1))h_en<=0;

    reg v_en ;
    always@(posedge pixel_clock)
        if (pixel_count == (`H_TOTAL-1) )begin
 
            if (line_count==(`V_TOTAL-1))v_en<=1;
            else if (line_count==(`V_ACTIVE-1))v_en<=0;

        end

    always@(posedge pixel_clock)
        dp_en <= v_en & h_en ;

    /*
    if (    
          (pixel_count <= (`H_ACTIVE-1))  
            && 
    	   (line_count<=(`V_ACTIVE-1))
    	   )
    	   dp_en <= 1 ;
    	   else 
    	   dp_en <= 0 ;
    */



    //3��,��ͼ���ҵ�H_SYN��ʱ��κ�V_SYN��ʱ��Σ�
    //�����ʱ���ͬ���źŶ�Ӧ����Ϊ�͵�ƽ��

    always@(posedge pixel_clock)
        if ( pixel_count ==(`H_ACTIVE+`H_FRONT_PORCH-1))
            h_synch<=0;
        else if ( pixel_count ==(`H_ACTIVE+`H_FRONT_PORCH+`H_SYNCH-1))
            h_synch<=1;

    always@(posedge pixel_clock)
        if ( pixel_count ==(`H_TOTAL-1))

        begin
            if (line_count==(`V_ACTIVE+`V_FRONT_PORCH-1))
                v_synch<=0;
            else if ( line_count ==(`V_ACTIVE+`V_FRONT_PORCH + `V_SYNCH-1))
                v_synch<=1;

        end




endmodule
