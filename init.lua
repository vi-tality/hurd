local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    print('Logged in as ' .. client.user.username)
end)

client:on('messageCreate', function(message)
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
end)

client:run('Bot ' .. os.getenv('BOT_CODE'))