<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="/static/styles.css">
    <title>More Info</title>
</head>
<body>
    % include('header.tpl')
    <div class="moreinfopage">
        <h1>Nánari upplýsingar</h1>
        <br>
        <div class="moreinfotable">
            <table>
                <tbody>
        %for uppl in data['results']:
            %if uppl['key'] == id:
                <tr>
                    <td>Söluaðili: {{uppl['company']}}</td>
                </tr>
                <tr>
                    <td>Staður: {{uppl['name']}}</td>
                </tr>
                <tr>
                    <td>Bensín: {{uppl['bensin95']}}</td>
                </tr><tr>
                    <td>Dísel: {{uppl['diesel']}}</td>
                </tr>

            %end
        %end
                </tbody>
            </table>
        </div>
        <a href="/" class="homehref">Heim</a>
    </div>

</body>
</html>