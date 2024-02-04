az group list --query "[].{Name:name}" -o tsv | while read -r name; do
  echo "terraform import azurerm_resource_group.$name /subscriptions/$ARM_SUBSCRIPTION_ID/resourceGroups/$name"
done
