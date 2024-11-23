`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2024 04:50:34 PM
// Design Name: 
// Module Name: control_unit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module control_unit  #( EP=3, VP=3, Rows=36, Columns_i=6, Columns_r=12, AWL=7, gru_size=600, time_steps=2)
                        (input clk, input reset, output reg modeSEL, output reg [AWL-1:0] mat_ctr, output reg new_line, output reg new_line_r_h, output reg new_line_x_h, output reg  h_t_begin, output reg [AWL-1:0] bias_ctr, output reg [31:0] h_t_ctr,output reg [31:0] new_set, output reg [2:0] delay, output reg r_en, output reg z_en, output reg we_h, output reg x_h_en, output reg r_h_mult, output reg r_h_en, output reg [31:0] z_addr,output reg [31:0] z_addr1, output reg [31:0] r_addr, output reg [31:0] r_addr1, output reg [31:0] x_h_addr, output reg [31:0] x_h_addr1,  output reg [31:0] h_t_addr1, output reg [31:0] h_t_addr_1);


//reg [31:0] new_set;
//reg [2:0] delay;
reg [31:0] new_set_x_h;
reg [31:0] new_set_r_h;
reg [31:0] time_steps_temp;
always @(posedge clk) begin

if(reset) begin
    delay <= 0;
    mat_ctr <= 0;
    new_line <= 0;
    //bias_ctr <= ((Rows*(Columns_i+Columns_r))/(VP*EP))-1;
    new_set <= ((Columns_i+Columns_r)/EP)-1;
    bias_ctr <= ((Rows*(Columns_i+Columns_r))/(EP*VP))-1;//6'd35;//(Rows*(Columns_i+Columns_r)/(EP*VP))-1;
    h_t_ctr <= -1;
    h_t_addr_1 <= -1;
    h_t_begin <= 0;
    //new_set_spe <= 0;
    z_addr <= -1;
    z_addr1 <= -1;
    r_addr <= (gru_size/VP)-1;
    r_addr1 <= (gru_size/VP)-1;
    h_t_addr1 <= (gru_size/EP)-1;
    $display("(gru_size/EP) = %d (gru_size>>$clogEP) = %d", ((gru_size)/(VP)), (gru_size>>$clog2(24)));
    $display("bias ctr     ((Rows*(Columns_i+Columns_r))/(EP*VP)) = %d", ((Rows*(Columns_i+Columns_r))/(EP*VP)));
    x_h_addr <= -1;
    x_h_addr1 <= -1;
    new_set_x_h <= ((Columns_i+Columns_r)/EP)-1;
    new_set_r_h <= ((Columns_i+Columns_r)/EP)-1;
    r_h_mult <= 0;
    x_h_en <= 0;
    r_h_en <= 0;
    modeSEL <= 1;
    z_en <= 0;
    r_en <= 0;
    time_steps_temp <= 0;
end


else begin

    delay <= delay+1;
    if(delay>0) begin
        mat_ctr <= mat_ctr+1;   // to increase at every clock cycle
        new_set <= new_set+1;
        delay<=delay;
           
     
        if( mat_ctr < (((Columns_i+Columns_r)*Rows*2)/(EP*3*VP))) begin
                 if(new_set == ((Columns_i+Columns_r)/EP)-1) begin
                    new_set <= 0;
                    new_line <= 1;
                    bias_ctr <= bias_ctr+1;
                end
                else begin 
                    new_line <= 0; 
                    bias_ctr <= bias_ctr; 
             
                end  
        end
            
       // if( mat_ctr>= ((Columns_i+Columns_r)/EP)*(Rows/3)*(2/VP)) begin
       else begin
                    
                    if(new_set_x_h == ((Columns_i+Columns_r)/EP)-1) new_set_x_h <= 0;
                    else new_set_x_h <= new_set_x_h+1;
                    
                    if(new_set_r_h == ((Columns_i+Columns_r)/EP)-1) new_set_r_h <= 0;
                    else new_set_r_h <= new_set_r_h+1;
                    
                    if(new_set_x_h == (Columns_i/EP)-1) begin
                
                        new_line <= 1;
                       // new_set_x_h <= 0;
                        bias_ctr <= bias_ctr+1;
                
                    end
            
                    else if (new_set_r_h == ((Columns_i+Columns_r)/EP)-1 ) begin
            
                        new_line <= 1;
                        //new_set_r_h <= 0;
                        bias_ctr <= bias_ctr+1;
                
                    end
            
                    else begin
            
                        new_line <= 0;
                        bias_ctr <= bias_ctr;
                
                    end
                    
            end
            
            
                           
            if (( (mat_ctr) <= ((((Columns_i+Columns_r)*Rows*3)/(EP*VP*3) )+(Columns_i/EP)-1)) && ( (mat_ctr) > ((((Columns_i+Columns_r)*2*Rows)/(EP*VP*3) )+1))) begin
                
                
               // $display ("mat_ctr=%d, x_h_mult condition=%d",mat_ctr, ((mat_ctr-(Columns_i/EP))%((Columns_i+Columns_r)/EP)));
                //$display("x_h_condition = %d",((mat_ctr-(Columns_i/EP))%((Columns_i+Columns_r)/EP))== 0);
                
                
                if(((mat_ctr-(Columns_i/EP))%((Columns_i+Columns_r)/EP))== 0) begin
                    x_h_en <= 1;
                    //r_h_mult <= 0;
                    x_h_addr <= x_h_addr+1;
                end
                
                else begin
                    x_h_en <= 0;
                    x_h_addr <= x_h_addr;
                end
                
                if(((mat_ctr)%((Columns_i+Columns_r)/EP))==0) begin
                    r_h_mult <= 1;
                    r_addr1 <= r_addr1+1;
                    x_h_addr1 <= x_h_addr1+1;
                    //x_h_en <= 0;
                   // x_h_addr <= x_h_addr;
                end
                
                else begin
                    r_h_mult <= 0;
                    r_addr1 <= r_addr1;
                    x_h_addr1 <= x_h_addr1;
                end
               
             
            end
          
            
            if(r_h_mult == 1) begin r_h_en <= 1; z_addr1 <= z_addr1+1; h_t_addr1 <= h_t_addr1+1; h_t_addr_1 <= h_t_addr_1+1; modeSEL <= 0; we_h <= 1; end
            else begin r_h_en <= 0; z_addr1 <= z_addr1; modeSEL <= 1;  h_t_addr1 <= h_t_addr1; h_t_addr_1 <= h_t_addr_1; we_h<= 0;end
            
        
        //$display("(mat_ctr <= (((Columns_i+Columns_r)/EP)*(Rows/3)*(1/VP))+1) = %d" ,  (((Columns_i+Columns_r)*Rows)/(EP*VP*3) ));
        if(((mat_ctr%((Columns_i+Columns_r)/EP)) >= (Columns_i/EP)-1)&& (mat_ctr%((Columns_i+Columns_r)/EP)) < ((Columns_i+Columns_r)/EP)-1) begin
            h_t_begin <= 1;
            h_t_ctr <= h_t_ctr+1;
            
           // $display("mat_ctr= %d, (mat_ctr/((Columns_i+Columns_r)/EP)) >= (Columns_i/EP)-1 = %d " , mat_ctr, (mat_ctr/((Columns_i+Columns_r)/EP)));
        end
        
        else begin
            h_t_begin <= 0;
            if(h_t_ctr>=(Columns_r/EP)-1) h_t_ctr <= (((time_steps_temp) *gru_size)/EP)-1;
            else h_t_ctr <= h_t_ctr;
        end

        
        if (( (mat_ctr) <= ((((Columns_i+Columns_r)*Rows)/(EP*VP*3) )+1)) && (((mat_ctr-1)%((Columns_i+Columns_r)/EP))==0) && (mat_ctr-1 !=0)&&(mat_ctr!=0)) begin
            z_en <= 1;
            z_addr <= z_addr+1;
            
        end
        else begin      
            z_en <= 0;
            z_addr <= z_addr;
        end
        if (( (mat_ctr) <= ((((Columns_i+Columns_r)*Rows*2)/(EP*VP*3) )+1)) && ( (mat_ctr) > ((((Columns_i+Columns_r)*Rows)/(EP*VP*3) )+1)) && (((mat_ctr-1)%((Columns_i+Columns_r)/EP))==0) && (mat_ctr-2 != (((Columns_i+Columns_r)*Rows)/(EP*VP*3) )) ) begin
            r_en <= 1;
            r_addr <= r_addr+1;
        end
        else begin  
            r_en <= 0;
            r_addr <= r_addr;
        end
        
        

       if (mat_ctr == ((Rows*(Columns_i+Columns_r))/ (EP*VP))+1) begin
       
            if(time_steps_temp != time_steps-1) time_steps_temp <= time_steps_temp+1;
            else time_steps_temp <= 0;
       
       end
       
       
       
       if (mat_ctr == ((Rows*(Columns_i+Columns_r))/ (EP*VP))+2) begin
       
       
       if(time_steps_temp == 0) begin 
       
            mat_ctr <= 0;
            new_line <= 0;
            //bias_ctr <= ((Rows*(Columns_i+Columns_r))/(VP*EP))-1;
            new_set <= ((Columns_i+Columns_r)/EP)-1;
            bias_ctr <= ((Rows*(Columns_i+Columns_r))/(EP*VP))-1;//6'd35;//(Rows*(Columns_i+Columns_r)/(EP*VP))-1;
            h_t_ctr <= -1;
            h_t_addr_1 <= -1;
            h_t_begin <= 0;
            //new_set_spe <= 0;
            z_addr <= -1;
            z_addr1 <= -1;
            r_addr <= (gru_size/VP)-1;
            r_addr1 <= (gru_size/VP)-1;
            h_t_addr1 <= (gru_size/EP)-1;
            x_h_addr <= -1;
            x_h_addr1 <= -1;
            new_set_x_h <= ((Columns_i+Columns_r)/EP)-1;
            new_set_r_h <= ((Columns_i+Columns_r)/EP)-1;
            r_h_mult <= 0;
            x_h_en <= 0;
            r_h_en <= 0;
            modeSEL <= 1;
       
       end
       
       else begin
        
            mat_ctr <= 0;
            new_line <= 0;
            //bias_ctr <= ((Rows*(Columns_i+Columns_r))/(VP*EP))-1;
            new_set <= ((Columns_i+Columns_r)/EP)-1;
            bias_ctr <= ((Rows*(Columns_i+Columns_r))/(EP*VP))-1;//6'd35;//(Rows*(Columns_i+Columns_r)/(EP*VP))-1;
            h_t_ctr <= (((time_steps_temp) *gru_size)/EP)-1;
            h_t_addr_1 <= (((time_steps_temp) *gru_size)/EP)-1;
            h_t_begin <= 0;
            //new_set_spe <= 0;
            z_addr <= -1;
            z_addr1 <= -1;
            r_addr <= (gru_size/VP)-1;
            r_addr1 <= (gru_size/VP)-1;
            h_t_addr1 <= ((time_steps_temp+1)*gru_size/EP)-1;
    
            x_h_addr <= -1;
            x_h_addr1 <= -1;
            new_set_x_h <= ((Columns_i+Columns_r)/EP)-1;
            new_set_r_h <= ((Columns_i+Columns_r)/EP)-1;
            r_h_mult <= 0;
            x_h_en <= 0;
            r_h_en <= 0;
            modeSEL <= 1; 
            z_en <= 0;
            r_en <= 0;
            
        end
        
        end
    end
    
    
   
    
    else begin
        
        mat_ctr <= mat_ctr;
        new_line <= new_line; 
        new_set <= new_set;
        bias_ctr <= bias_ctr; 
    end
   
  end

end


endmodule


