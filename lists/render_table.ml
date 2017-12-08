open Core

let max_widths header rows =
    let lengths l = List.map ~f:String.length l in
    List.fold rows
        ~init:(lengths header)
        ~f:(fun acc row ->
            List.map2_exn ~f:Int.max acc (lengths row))
            
