    if ( cmd == "spec" )
    {
            if(!text) MessagePlayer("[#ff0000]Error: [#ffffff]Syntax: /spec <player name>", player);
            else
            {
                local plr = FindPlayer(text);
                if(!plr) MessagePlayer("[#ff0000]Error: [#ffffff]Player not found.", player);
                else if(plr.Name == player.Name) MessagePlayer("[#ff0000]Error: [#ffffff]You cannot spectate yourself.", player);
                else
                {
                    player.SpectateTarget = plr;
                    MessagePlayer("[#00ff00]Server: [#ffffff]You are now spectating " + plr.Name + ". Use /stopspec to stop spectating.", player);
                }
            }
    }

    else if ( cmd == "stopspec" )
    {
            if(player.SpectateTarget)
            {
                local target = player.SpectateTarget;
                player.SpectateTarget = null;
                MessagePlayer("[#00ff00]Server: [#ffffff]You have stopped spectating " + target.Name + ".", player);
            }
            else MessagePlayer("[#ff0000]Error: [#ffffff]You are not spectating anyone.", player);
    }
