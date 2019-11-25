/*
             
             vga_drv vga_drv (
             .pixel_clock(  ),
             .h_synch(  ),
             .v_synch(  ),
             .R(  ),
             .G(  ),
             .B(  ),
             .sys_clk(  ),
             .rst_i(  ),
             .feed_addr(  ),
             .feed_data(  ),
             .din(  )
             );
             
*/
             
             
module vga_drv(

             input pixel_clock,
             output   h_synch,v_synch,
             output [3:0] R,G,B,
			 
             input sys_clk,rst_i,
             input feed_addr,feed_data,
             input [31:0] din
             
             );
             
             reg [31:0]  buff_addr ;
             
             always @(posedge sys_clk)
             if(feed_addr)             buff_addr <= din;
             else if(feed_data)        buff_addr <= 1 + buff_addr ;
             
             wire [10:0] line_count , pixel_count ;
             reg[31:0] pixel_addr ;
             wire [11:0] buff_out ;
             
             always @ ( * ) pixel_addr <= line_count * 640 + pixel_count;
           
              vga_buffer_wrapper   VGA_BRAM
                (
                 .BRAM_PORTA_addr ( buff_addr[ 18:0 ] ),
                 .BRAM_PORTA_clk ( sys_clk ),
                 .BRAM_PORTA_din (din[11:0]  ),
                 .BRAM_PORTA_en ( 1'B1 ),
                 .BRAM_PORTA_we ( feed_data ),
                 
                 .BRAM_PORTB_addr ( pixel_addr[18:0] ),
                 .BRAM_PORTB_clk (  pixel_clock ),
                 .BRAM_PORTB_dout ( buff_out ),
                 .BRAM_PORTB_en ( 1'B1  )
                 );
             
             /*
             vga_dpram vga_dpram(
             .wr_clk (sys_clk ),
             .wr_addr( buff_addr ),
             .wr_din( din[11:0]),
             .wr( feed_data),
             
             .rd_clk( pixel_clock ),
             .rd_addr( pixel_addr),
             .rd_dout( buff_out )
             );
             */
             wire dp_en; 
             
             my_vga my_vga (
             .pixel_clock(pixel_clock) ,    
             .rst_i( rst_i) ,
             .h_synch(h_synch) ,    
             .v_synch(v_synch) ,
             .dp_en( dp_en ) ,
             .line_count ( line_count) ,
             .pixel_count (pixel_count )
             );
             
             assign R = (dp_en==0) ? 0 : buff_out[11:8] ; 
             assign G = (dp_en==0) ? 0 : buff_out[7:4] ;
             assign B = (dp_en==0) ? 0 : buff_out[3:0] ; 
             
endmodule 
