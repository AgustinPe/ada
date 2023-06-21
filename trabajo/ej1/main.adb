with Ada.Text_IO;
with Ada.Calendar; -- Para utilizar la función Clock.

procedure Main is
   package IO is new Ada.Text_IO;
   use IO;
   Start_Time : Ada.Calendar.Time;
   End_Time   : Ada.Calendar.Time;

begin
   Put_Line("---- Inicio del programa main ----");

   -- Obtenemos la hora de inicio.
   Start_Time := Ada.Calendar.Clock;

   -- Esperamos 5 segundos.
   delay 5.0;

   -- Obtenemos la hora de fin.
   End_Time := Ada.Calendar.Clock;

   Put_Line("---- Fin del programa main ----");

   -- Calculamos la duración del programa.
   Put("Duración del programa: ");
   Put(Ada.Calendar.To_Duration(End_Time - Start_Time));
   Put_Line(" segundos.");
end Main;