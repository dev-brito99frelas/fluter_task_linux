# **Functional requirements**

## **Keep User**
### **[RF001] Register User**  
- [ ] implementing.  

**Description:** Allows the user to register in the system.  
**Actors:** User.

**Entries and preconditions**:
- None.  

**Outputs and postconditions**:
- User registered, success.  

### **[RF002] Change User**  
- [ ] implementing.  

**Description: Allows the user to change their own information** in the system.  
**Actors:** User.

**Entries and preconditions**:
- Log in to the system;

**Outputs and postconditions**:
- Information updated successfully.

### **[RF003] Reset User**  
- [ ] implementing.  

**Description:** Allows a user to be able to reset their password on the system.
**Actors:** User.

**Entries and preconditions**:
- Insert a recovery key into the system.

**Outputs and postconditions**:  
- Password changed successfully.


## **Keep Tasks**
### **[RF004] Task Register**  
- [ ] implementing.  

**Description:** Allows a user to register a new task.
**Actors:** User.

**Entries and preconditions**:
- Login to the system;
- Task data.

**Outputs and postconditions**:  
- A new task registered.

### **[RF005] Delete Task **  
- [ ] implementing.  

**Description:** Allows a user to delete a task.
**Actors:** User.

**Entries and preconditions**:
- Login to the system;
- Task data.

**Outputs and postconditions**:  
- task deleted.

### **[RF006] Postpone deadline **  
- [ ] implementing.  

**Description:** Defer to the task's deadline, using the completion field of the task.
**Actors:** User.

**Entries and preconditions**:
- Login to the system;
- Task data.

**Outputs and postconditions**:  
- updated task.

### **[RF007] Mark task as complete **  
- [ ] implementing.  

**Description:** Allow user to Mark a task as complete.
**Actors:** User.

**Entries and preconditions**:
- Login to the system;
- Task data.

**Outputs and postconditions**:  
- none.

### **[RF008] Import task in json format **  
- [ ] implementing.  

**Description:** Permitir importa????o de uma tarefa em formato json.
**Actors:** User.

**Entries and preconditions**:
- Login to the system;
- Task data.

**Outputs and postconditions**:  
- none.


___
# **Non-functional requirements**

### **[NF001] Usability**  
If you have good usability on the system, you will ensure that clear information and well-organized sources, it is not possible to keep the same look and feel on multiplatform.

### **[NF002] Performance**
Keep a good performance, don't activate the user more than 3s expecting access to any 1 screen.


### **[NF004] Security**
The system must maintain secrecy as referring to a user, thus not allowing others to have access to tasks that were created by the same.
