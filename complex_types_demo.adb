pragma Ada_2022;
with Ada.Numerics.Elementary_Functions;
package body Complex_Types_Demo is
   function Make (Re, Im : Float) return CT.Complex is
   begin
      return (Re => Re, Im => Im);
   end Make;
   function Modulus_Of (Z : CT.Complex) return Float is
   begin
      return Ada.Numerics.Elementary_Functions.Sqrt
        (Z.Re * Z.Re + Z.Im * Z.Im);
   end Modulus_Of;
   function Sum (A, B : CT.Complex) return CT.Complex is
      use type CT.Complex;
   begin
      return A + B;
   end Sum;
end Complex_Types_Demo;
