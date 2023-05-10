                end;
    function isPalindrome (head: t): boolean;
        var right, left, stop: t;
        begin
            isPalindrome := false;
            if head<> nil then  
                if head^.next <> nil then 
                    begin
                        stop := head;
                        wh