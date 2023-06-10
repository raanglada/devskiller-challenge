# devskiller-challenge

# question 1

- Created a backend to store the state in a remote
- See backend.tf file
- This snnipet of code was added to the files in the challengue

# question 2

First strategy
- Use saving costs. This is one of the best practices recommend by AWS to save costs.

Second strategy
- If we have non prod environments, that could be stopped when the team is not working we should have automatic 
tasks that enable the client shutdown the infrastructure of the non prod envrionments. This could save costs a lot.

I don't see what 

# question 3

- To support multiple environment we can use terraform workspace or just create the corresponding tfvars per environment, 
for example a deploy folder with tfvars per environment, then use the corresponding in the specific terraform execution. 
- A bash script that copies the corresponding tfvars to the path we are executing terraform init could be a solution

# question 4
- To remove this password we can create a password resource, send it to the aws secrets manager and then reuse it from there
- See the RDS folder with the password.tf inside.






