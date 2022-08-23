alias nsm='nvidia-smi'
alias ls='ls --color=auto'
export SQUEUE_FORMAT="%.18i %.9P %.60j %.8u %.2t %.10M %.6D %.20R %q %b"
alias gsrun='srun --gres=gpu:1 --partition=a100 --time=25:00:00 --cpus-per-task=40 --pty /bin/bash -l'
alias gsrun2='srun --gres=gpu:2 --partition=a100 --time=25:00:00 --cpus-per-task=40 --pty /bin/bash -l'
alias gsrun8='srun --gres=gpu:8 --partition=a100 --time=25:00:00 --cpus-per-task=80 --pty /bin/bash -l'

alias hgsrun='srun --gres=gpu:1 --partition=hipri --time=25:00:00 --cpus-per-task=40 --pty /bin/bash -l'
alias hgsrun2='srun --gres=gpu:2 --partition=hipri --time=25:00:00 --cpus-per-task=40 --pty /bin/bash -l'
alias hgsrun8='srun --gres=gpu:8 --partition=hipri --time=25:00:00 --cpus-per-task=80 --pty /bin/bash -l'

alias lgsrun='srun --gres=gpu:1 --partition=lowpri --time=20:00:00 --cpus-per-task=40 --pty /bin/bash -l'
alias lgsrun2='srun --gres=gpu:2 --partition=lowpri --time=20:00:00 --cpus-per-task=40 --pty /bin/bash -l'
alias lgsrun8='srun --gres=gpu:8 --partition=lowpri --time=20:00:00 --cpus-per-task=80 --pty /bin/bash -l'


alias gsq='squeue -u $USER'
alias gsa='sacct -u $USER'
