create module with its submodule. example: "Product"

if you created submodule using checkbox then only need to mention resource route in web.php
Example: Route::resource('products', ProductController::class);

create view files and controller as per "user" module.

To show Product in sidebar for specific role:

Click "Sidebar" => "SideMenu"

If you want to give all permissions to Role for example: "Manager" and show listing in sidebar when manager role's user login.

Then select Role: Manager in dropdown and Module: "Product" and submit.

check all checkbox except for "Index" in "Don't Show in Menu" column and click on submit button at the end.
//========================

**Role-Based Permissions in Frameworks:**

Many frameworks provide built-in or easily configurable modules for managing users, roles, and permissions. These frameworks allow you to create flexible role-based access control (RBAC) systems where each user has specific roles assigned, which grant or restrict access to certain modules or actions within an application.

# Instruction:

**Step1:** After clone Repo import database from folder "database". Here you can see login credential in "hint" column.

**Manage add/edit/delete buttons as per roles**

**Step2:** click on 


# Key Features:
**User Roles:** You can create different roles such as "Admin", "Manager", or "Data Entry User", depending on your system's needs.

**Modules and Submodules:** You can define modules (e.g., "Blog", "Reports", etc.) and further divide them into submodules (e.g., "View Blog", "Add Blog", "Edit Blog").

**Permissions Assignment:** Each role can be assigned specific permissions for different modules. For example, you can assign the role "Data Entry User" the permissions to "Add" and "Edit" blog posts but restrict the "Delete" permission.

**Dynamic Access Control:** Based on the role and its associated permissions, when a user logs in, they will see only the modules and actions they have permission to access. For example, if a "Data Entry User" is allowed to add and edit blog posts, they will see the blog module with "Add" and "Edit" options, but they won’t see the "Delete" option.

# Example Scenario:
**Create Roles:** Define a role named "Data Entry User".

**Define Modules:** Create a module called "Blog".

**Assign Permissions:** Within the "Role Permissions" module, assign the permissions to "Add" and "Edit" blog posts to the role "Data Entry User", while restricting the "Delete" permission.

**Role-Based UI:** When a user with the role "Data Entry User" logs in, they will be able to see the "Blog" module and perform the "Add" and "Edit" actions. However, they won’t have access to the "Delete" option, since that permission was not granted.

**This approach allows organizations to manage access to various parts of the system based on roles, ensuring users only see and interact with what is relevant to their permissions.**