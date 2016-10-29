return function (connection, req, args)  
    buffer=ws2812.newBuffer(16, 3)
    buffer:fill(args.g, args.r, args.b)
    ws2812.write(buffer)

   connection:send("HTTP/1.0 200 OK\r\nContent-Type: application/json\r\nCache-Control: private, no-store\r\n\r\n")
   connection:send('{"error":0, "message":"OK"}')
end