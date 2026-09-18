pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Complex_Types_Demo; use Complex_Types_Demo;
procedure Tests is
   Z : constant CT.Complex := Make (3.0, 4.0);
   W : constant CT.Complex := Sum (Make (1.0, 2.0), Make (2.0, 3.0));
begin
   Assert (abs (Modulus_Of (Z) - 5.0) < 1.0E-5);
   Assert (W.Re = 3.0 and then W.Im = 5.0);
   Put_Line ("PASS Complex_Types Construct / Modulus / +");
   Put_Line ("All Complex_Types topic tests passed.");
end Tests;
