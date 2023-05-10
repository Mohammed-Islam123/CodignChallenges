program dublicate;
    type
    t = ^ListNode;
     ListNode = record
                        val: integer;
                        next: t;
                    end;
    function deleteDuplicates (var head: t) : t;
        var x,y: t;
        begin
            x := head;
            if x <> nil then
                while x^.next <> nil do 
                    begin
                        while (x^.val = x^.next^.val) do 
                            begin
                                y:= x^.next;
                                x^.next := x^.next^.next;
                                dispose(y);
                            end;
                        if x^.next <> nil then
                            x := x^.next;
                    end;


        end;


        begin

        end.
