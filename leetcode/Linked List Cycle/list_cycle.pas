program list;

type ListNode = record
                    val: integer;
                    next: ^ListNode;
                end;

    t = ^ListNode;
function hasCycle (head: t): boolean;
    var fast, slow: t;

    begin
        hasCycle := false;
        if (head <> nil) then
            begin
            if head^.next <> nil then  
                begin 
                if head^.next^.next <> nil then 
                    begin
                        slow := head;
                        fast:= head^.next^.next;
                        while (fast <> slow) and (fast^.next <> nil) do 
                            begin
                                if fast^.next^.next <> nil then
                                    fast :=fast^.next^.next 
                                    else
                                        fast := fast^.next;
                                slow := slow^.next;
                            end;
                        hasCycle := (fast <> slow) and (fast^.next <> nil);
                    end;
                    end;
                    end;

    end;



begin


end.