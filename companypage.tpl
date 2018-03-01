<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="/static/styles.css">
    <title>Fyrirtæki</title>
</head>
<body>
    % include('header.tpl')
    <div class="companypage">
        <h1>Bensínstöðvar</h1>
        <br>
        <table>
            <tbody>
            <tr>
                <th>Fyrirtæki</th>
                <th>Staður</th>
            </tr>

            % stk = 0
            % for name in data['results']:
                % if name['company'] == route:
                <tr class="bensinstod">
                    <td>{{name['company']}}</td>
                    <td><a href="/moreinfo/{{name['key']}}">{{name['name']}}</a></td>
                </tr>
                % stk = stk + 1
                %end
            % end


            </tbody>
        </table>
        <h4>Fjöldi stöðva: {{stk}}</h4>

        <a href="/" class="homehref">Heim</a>
    </div>
</body>
</html>