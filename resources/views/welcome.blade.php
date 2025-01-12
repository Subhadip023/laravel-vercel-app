<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />
        <style>
             * {
                margin: 0;
                padding: 0;
            } 

            body{
                background: #000;
                color: white;
                display: flex;
                align-items: center;
                justify-content: center;
                min-height: 100vh;
            }
        </style>
       
          @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body >
        
        <div style="background: black" class="  flex items-center justify-center min-h-screen bg-black font-bold">
<h1 class="text-2xl  text-white">
    Laravel website Host By Subhadip  
</h1>
        </div>
    </body>
</html>
