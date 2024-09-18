if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
direnv hook fish | source
zoxide init fish | source

gpgconf --launch gpg-agent

# Ensure that GPG Agent is used as the SSH agent
set -e SSH_AUTH_SOCK
set -U -x SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh
