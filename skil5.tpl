<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Verkefni 5 - Viðburður</title>
    <link rel="stylesheet" href="/static/styles5.css">
</head>
<body>
    <h1>Viðburðir</h1>
    <div class="kassi">
    % for event in data['results']:
        <div class="event">
            <h2>{{event['eventDateName']}}</h2>
            <h2>{{event['eventHallName']}}</h2>
            <h2>{{event['dateOfShow'][:10]}}</h2>
            <h3>Kl.{{event['dateOfShow'][11:16]}}</h3>
            <img src="{{event['imageSource']}}" alt="">
        </div>
    % end
    </div>
</body>
</html>
