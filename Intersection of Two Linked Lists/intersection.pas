
program intersection;
//https://leetcode.com/problems/intersection-of-two-linked-lists/description/
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
            writeln;
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
    function getIntersectionNode(headA, headB: t): t;
var
  tempA, tempB: t;
begin
  tempA := headA;
  tempB := headB;
  while (tempA <> tempB) do 
  begin
     if tempA <> nil then 
     tempA := tempA^.next 
     else 
     tempA := headB;
     if tempB <> nil  then 
     tempB := 
     tempB^.next 
     else
     tempB := headA;
  end;
  getIntersectionNode := tempA;
end;
    
    
        var head1, head2, x, y: t;
        begin
            create(head1);
            display(head1);
            create(head2);
        x := getIntersectionNode(head1,head2);
        writeln;
        writeln(x=nil);
        display(x);
        end.








//Less improved solution
        (*
            function listSize(head: t): integer;
        var x: t;
            ctr: integer;
        begin
            ctr := 0;
            x := head;
            while (x <> nil) do 
                begin
                    x := x^.next;
                    ctr := ctr +1;
                end;
        listSize := ctr;
        end;


    function getIntersectionNode(headA, headB: t ): t;
        var currentA, currentB: t;
            sizeA, sizeB,i: integer;
        begin
            currentA := headA;
            currentB := headB;
            i := 0;
            sizeA := listSize(currentA);
            sizeB := listSize(currentB);
            if sizeA > sizeB then
                begin
                    sizeA := sizeA - sizeB;
                    while (i < sizeA) and (currentA^.next <> nil) do 
                    begin
                        i := i+1;
                        currentA := currentA^.next;
                    end;
                    end
                    else
                        begin
                            sizeB := sizeB - sizeA;
                            while (i < sizeB) and (currentB^.next <> nil) do 
                                begin
                                    i := i+1;
                                    currentB := currentB^.next;
                                end;

                        end;

            
            while (currentA^.next <> nil) and (currentA^.next <> currentB^.next) do 

                begin
                    currentA := currentA^.next;
                    currentB := currentB^.next;
                end;
            getIntersectionNode := currentA^.next;
        end;

        *)