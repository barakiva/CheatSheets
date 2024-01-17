# Generation
ssh-keygen -t ed25519 -C "your_email@example.com"
ssh-keygen -t rsa -b 4096 -C "your@email.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/your_key
# Access
ssh -i ~/.ssh/azure_rsa azureuser@20.21.145.215