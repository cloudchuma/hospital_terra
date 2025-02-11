terraform { 
  cloud { 
    
    organization = "chuma-tech-1" 

    workspaces { 
      name = "hospital1" 
    } 
  } 
}