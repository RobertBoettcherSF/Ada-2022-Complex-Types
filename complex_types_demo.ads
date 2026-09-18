--  Ada 2022 topic: Ada.Numerics.Complex_Types
--  (Float instance of Generic_Complex_Types).
pragma Ada_2022;
with Ada.Numerics.Complex_Types;
package Complex_Types_Demo is
   package CT renames Ada.Numerics.Complex_Types;
   function Make (Re, Im : Float) return CT.Complex;
   function Modulus_Of (Z : CT.Complex) return Float;
   function Sum (A, B : CT.Complex) return CT.Complex;
end Complex_Types_Demo;
