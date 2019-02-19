# terraform

access_key and secret_key must be set via aws cli controls or in the s3 backend file to initiate connection

key_pair is a string in the module (can only send one at a time to the resource) but is a list in ec2 vars so that you can send more then one key pair.
use index numbers to seperate them out in main.tf