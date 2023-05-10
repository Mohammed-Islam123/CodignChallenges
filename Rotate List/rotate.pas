program retate_list;
    type
        t = ^ListNode;
        ListNode  = record 
                        val: integer;
                        next: t;
                    end;
                    
    function rotate (var head: t; k: integer): t;
        var current: t;
            size, n: integer;
        begin
            if (head = nil) or (head^.next = nil) then  
               rotate := head
               else 
                begin
                    //calculate the size of the list and make it circular
                    size := 1;
                    current := head;
                    while (head^.next <> nil) do 
                        begin
                            current := current^.next;
                            size := size + 1;
                        end;
                    current^.next := head;
                    
                    //finding the new head then recostructor the list
                    n := size - (k mod size);
                        //we will use size as a counter
                    size := 1;
                    current := head;
                    while size <= n do
                        begin
                            size := size+ 1;
                            current := current + 1;
                        end;
                    rotate := current^.next;
                    current^.next := nil;
                end;
        end;

begin
  writeln ('Hello World')
end.

