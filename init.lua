local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    print('Final               | \27[1m\27[32m[INFO]\27[0m    | Logged in as ' .. client.user.username)
end)

client:on('messageCreate', function(message)
    -- TODO: possibly set this to a switch case
    if message.content == '!ping' then
        message.channel:send('Pong!')
    end
    if message.content == "!bfiles" then
        message.channel:send('https://github.com/bobbbay/dotfiles')
    end
    if message.content == '!gfiles' then
        message.channel:send('https://github.com/gytis-ivaskevicius/nixfiles')
    end
    if message.content == '!jfiles' then
        message.channel:send('https://github.com/DieracDelta/nix_home_manager_configs')
    end
    if message.content == '!ygentoo' then
        file = io.open('content/ygentoo', 'r')
        io.input(file)
        message.channel:send(io.read())
        io.close(file)
    end
    if message.content == '!ynix' then
        message.channel:send('Because')
    end
end)

client:run('Bot ' .. os.getenv('BOT_CODE'))
