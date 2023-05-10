program rotate_list;
    type 
    t = ^ListNode;
    ListNode = record 
                val: integer;
                next:t;
            end;
    function reorder (l: t): t;
        procedure inverse (var head: t);
            var prev, current: t;
            begin
                prev := nil;
                while (head <> nil) do 
                    begin
                        current := head;
                        head := head^.next;
                        current ^.next := prev;
                        prev := current;
                    end;
        var slow, fast: t;
        begin
            // fidning the mid node 
            slow := l;
            fast := l;
            while (fast <> nil and fast^.next <> nil) do 
                begin
                    fast := fast^.next^.next;
                    slow := slow^.next;
                end;
        


        end;



            end;
