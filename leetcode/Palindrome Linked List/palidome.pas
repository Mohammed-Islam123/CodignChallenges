program palidome;
//https://leetcode.com/problems/palindrome-linked-list/description/
    type
    t = ^ListNode;
     ListNode = record
                        val: integer;
                        next: t;

                    end;


        procedure display (head: t);
        var x: t;
        begin
            x := head;
            while x <> nil do 
                begin
                write(x^.val,' ');
                x :=x^.next;
            end;
            
            end;

    procedure inverse (var head: t);
        var current, prev: t;
        begin

            prev := nil;
            while (head <> nil) do 
                begin
                    current :=head;
                    head := head^.next;
                    current^.next := prev;
                    prev := current;
                end;
head := prev;
        end;

    function isPalindrome (head: t): boolean;
        var fast, slow: t;
        begin
            //Find the middle of the list
            fast := head;
            slow := head;
            while (fast <> nil ) and (fast^.next <> nil) do 
                begin
                    fast := fast^.next^.next;
                    slow := slow^.next;
                end;
                
             inverse(slow);
             fast := head;
             while (fast <> slow) and (fast^.next <> slow) and (fast^.val = slow^.val) do
                begin
                    fast := fast^.next;
                    slow := slow^.next;
                end;
            isPalindrome :=  (fast^.val = slow^.val);       
    
        end;

procedure create (var debut:t );
    var i,n: integer;
            x: t;
    begin
        write('How much elements you want to create: ');
        readln(n);
        if n > 0 then
            begin
            new (debut);
            write('val: ');
            readln(debut^.val);
            x :=  debut; 
        end;
        
        for i := 2 to n do 
            begin
            	new(x^.next);
            	write('val: ');
            	x := x^.next;
                readln(x^.val);
            end;
            x^.next :=  nil;
    end;
    
































var head: t;

begin
        create(head);
        writeln;
        display(head);
        writeln;
        writeln(isPalindrome(head));


end.

















(*

        if head<> nil then
                if head^.next <> nil then   
                    begin
                        right:= head;
                        while (right^.val <> right^.next^.val) and (right^.next<> nil) do 
                            right := right^.next;
                        if right^.next<> nil then   
                            begin
                                left := right^.next;
                                stop := right;
                                while  (left^.next <> nil) and (left^.val  = right^.val) do 
                                    begin
                                        left := left^.next;
                                        right :=head;
                                        while (head^.next <> stop) do
                                            head := head^.next;
                                    end;

                                isPalindrome :=(left^.val  = right^.val);     
                            end;

                    end;

*)
