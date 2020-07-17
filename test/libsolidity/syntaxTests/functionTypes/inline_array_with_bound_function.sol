library L {
    function f(uint a) internal pure {}
    function g(uint a) internal pure {}
}
contract C {
    using L for *;
    function f() pure public {
        uint t = 8;
        [t.f, t.g][0]();
    }
}
// ----
// TypeError 9656: (185-195): Unable to deduce nameable type for array elements. Try adding explicit type conversion for the first element.
