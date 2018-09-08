open System

[<EntryPoint>]
let main argv =
  if Array.isEmpty argv then
    printfn "Hello World from F#!"
  else
    let name = argv |> String.concat " "
    printfn "Hello, %s!" name
  0

