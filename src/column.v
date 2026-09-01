`default_nettype none

module ip_column (
    input  wire        VGND,
    input  wire        VDPWR,   
    input  wire [16:0] arow, 
    input  wire        reset,
    input  wire        enable,
    output wire        bus  
);

    wire column;

    ip_pixel_nd2ps pixel_00(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 0]), .cl(column));
    ip_pixel_nd2ps pixel_01(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 1]), .cl(column));
    ip_pixel_nd2ps pixel_02(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 2]), .cl(column));
    ip_pixel_nd2ps pixel_03(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 3]), .cl(column));
    ip_pixel_nd2ps pixel_04(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 4]), .cl(column));
    ip_pixel_nd2ps pixel_05(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 5]), .cl(column));
    ip_pixel_nd2ps pixel_06(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 6]), .cl(column));
    ip_pixel_nd2ps pixel_07(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 7]), .cl(column));
    ip_pixel_nd2ps pixel_08(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 8]), .cl(column));
    ip_pixel_nd2ps pixel_09(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[ 9]), .cl(column));
    ip_pixel_nd2ps pixel_10(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[10]), .cl(column));
    ip_pixel_nd2ps pixel_11(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[11]), .cl(column));
    ip_pixel_nd2ps pixel_12(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[12]), .cl(column));
    ip_pixel_nd2ps pixel_13(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[13]), .cl(column));
    ip_pixel_nd2ps pixel_14(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[14]), .cl(column));
    ip_pixel_nd2ps pixel_15(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[15]), .cl(column));
    ip_pixel_nd2ps pixel_16(.VDD(VDPWR), .VSUBS(VGND), .reset(reset), .read(arow[16]), .cl(column));
    ip_column_switch cswitch(
        .VSUBS(VGND),
        .bus(bus),
        .cl(column),
        .en(acol[0])
    );


endmodule