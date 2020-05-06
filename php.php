<?php
    // example 1
    function curruMethod(int $x) : Closure
    {
        return function(int $y) use($x) : Closure
        {
            return function(int $z) use($x, $y) : int
            {
                return $x + $y + $z;
            };
        };
    }
    $test_0 = curruMethod(1);
    echo $test_0(1)(1);
    echo "\n";

    # example 2

?>