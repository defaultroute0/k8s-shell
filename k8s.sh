##### curl -L https://raw.githubusercontent.com/defaultroute0/k8s-shell/main/k8s.sh  | bash
#!/bin/bash
source <(kubectl completion bash) # setup autocomplete in bash into the current shell, bash-completion package should be installed first.
echo "source <(kubectl completion bash)" >> ~/.bashrc # add autocomplete permanently to your bash shell.
alias k=kubectl
complete -o default -F __start_kubectl k
#
echo "alias k='kubectl'" >> ~/.bashrc
echo "alias kg='kubectl get'" >> ~/.bashrc
echo "alias kd='kubectl describe'" >> ~/.bashrc
echo "alias kaf='kubectl apply -f'" >> ~/.bashrc
echo "alias kc='kubectl create'" >> ~/.bashrc
echo "alias kdel='kubectl delete --force'" >> ~/.bashrc
echo "alias ke='kubectl edit'" >> ~/.bashrc
echo "alias kr='kubectl run'" >> ~/.bashrc
echo "alias kei='kubectl exec -it'" >> ~/.bashrc
#kubectl exec -it demo-pod -- /bin/sh
#export do="--dry-run=client -oyaml"
#
#echo "alias km='kubectl config use-context tkgm-mgmt-admin@tkgm-mgmt'" >> ~/.bashrc
#echo "alias k1='kubectl config use-context tkgm-guest1-admin@tkgm-guest1'" >> ~/.bashrc
#echo "alias k2='kubectl config use-context tkgm-guest2-admin@tkgm-guest2'" >> ~/.bashrc
#echo "alias k3='kubectl config use-context tkgm-guest3-admin@tkgm-guest3'" >> ~/.bashrc
#
echo "export do='--dry-run=client -oyaml'" >> ~/.bashrc
echo "export now='--grace-period=0 --force'" >> ~/.bashrc
source ~/.bashrc
echo 'set nu ts=2 sw=2 expandtab ruler' > ~/.vimrc
echo 'set backspace=indent,eol,start' >> ~/.vimrc
source ~/.vimrc
