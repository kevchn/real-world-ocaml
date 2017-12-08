open OUnit2
open Render_table

let tests = "test suite for render_table" >::: [
    "empty" >:: (fun _ -> assert_equal [0] (max_widths [""] []));
    "normal" >:: (fun _ -> assert_equal [6;9] (max_widths ["name";"birthyear"] [["kevin";"1998"];["johann";"1998"]]));
]

let _ = run_test_tt_main tests
