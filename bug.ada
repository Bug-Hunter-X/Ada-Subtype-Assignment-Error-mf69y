```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1,2,3,4,5,6,7,8,9,10);
   subtype My_Sub_Array is My_Array(1..5);
   Sub_Arr : My_Sub_Array;
begin
   Sub_Arr := My_Arr(1..5); -- This is correct
   --Sub_Arr := My_Arr;  -- This is incorrect because of type mismatch
   for i in Sub_Arr'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(Sub_Arr(i)));
   end loop;
exception
   when others =>
      Ada.Text_IO.Put_Line("Error");
end Example;
```