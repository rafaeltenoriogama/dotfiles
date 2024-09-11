if status is-interactive
    # Commands to run in interactive sessions can go here
    # Substituir o LS pelo EZA
    alias ls eza
    #Substituir para o fly funcionar
    alias fly='/home/rafael/.fly/bin/fly'
    alias flyctl='/home/rafael/.fly/bin/flyctl'
    # Comandos para o timer
    alias job="pomodoro work"
    alias pause="pomodoro break"

    function pomodoro
        set -l session_type $argv[1]
        set -l work_icon ~/Imagens/niqaba.png # Altere para o caminho do ícone desejado

        # Se for uma sessão de trabalho, definir para 1 hora (3600 segundos)
        if test "$session_type" = work
            # 60 minutes duration_seconds is 3600
            notify-send -i $work_icon Pomodoro "🟢 Work session started! You have 60 minutes."
            timer 3600
            # Se for uma pausa, definir para 15 minutos (900 segundos)
        else if test "$session_type" = break
            # 10 minutes duration_seconds is 900
            notify-send -i $work_icon Pomodoro "🟢 Break session started! You have 15 minutes."
            timer 9
        else
            echo "Invalid session type" >&2
            return 1
        end

        # Notificação de fim de sessão
        if test "$session_type" = work
            notify-send -i $work_icon Pomodoro "Work Timer is up! Take a Break 😊"
        else if test "$session_type" = break
            notify-send -i $work_icon Pomodoro "Break is over! Get back to work 😬"
        end
    end

end
