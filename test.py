import subprocess

# Run an AWS CLI command 
command = "aws ec2 describe-instances"
result = subprocess.run(command, shell=True, capture_output=True)
print(result.stdout.decode())
