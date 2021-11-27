# Matlab Fundamentals

You can execute commands by entering them in the command window after the MATLAB prompt, `>>`, and pressing the **Enter** key.

You can use standard arithmetic operators in MATLAB.

| `+`  | Addition       |
| ---- | -------------- |
| `-`  | Subtraction    |
| `*`  | Multiplication |
| `/`  | Division       |
| `^`  | Exponentiation |

Unless otherwise specified, MATLAB stores calculations in a variable named `ans`.

```matlab
>> 3*5
ans = 
    15
```

Use `=` to assign the output to a variable. Always put the variable name on the left of `=`.

```matlab
>> variableName = 3*5
variableName = 
    15
```

The equals sign, `=`, in MATLAB is the *assignment* operator. The expression on the right of the equals sign is assigned to the variable on the left.

So, when you enter `m = 6*7`, MATLAB first evaluates `6*7` and then assigns the result, `42`, to the variable `m`.

Notice that the **Workspace** window (on the right) shows all the variables currently in the workspace.

Adding a semicolon, `;`, to the end of a command will suppress the output, though the command will still be executed, as you can see by looking at the changed value in the **Workspace**.

```matlab
>> varName = m/2  
varName = 
    8
```

```matlab
>> varName = m/2;  
 
```

You can recall previous commands by pressing the Up arrow key on your keyboard. Note that the **Command Window** must be the active window for this to work.

When you enter a variable name at the command prompt, MATLAB returns the current value of that variable.

Calculations in MATLAB obey the normal mathematical rules of precedence. You can use parentheses to group terms for precedence or clarity.

The following list is the order of operations—the operator higher in the list should be applied first.

1. parentheses, brackets
2. exponents, roots
3. multiplication, division
4. addition, subtraction

You can name your MATLAB variables anything you'd like as long as they **start** with a letter and contain only letters, numbers, and underscores, `_`.

To delete the variables from the workspace, you can use the `clear` command .

```matlab
>> clear
```

To delete only specific variables, specify those after the `clear` command.

```matlab
>> clear var1 var2
```

Notice that there are no variables in the Workspace now.

If you would like to clear the **Command Window**, you can use the `clc` command.

You can control how the output is displayed in the MATLAB Command Window.

The command `format long` will cause the Command Window to display more precision whereas the command `format short` results in less displayed precision.



You can double-click the variable in the Workspace to open it in the **Variable Editor**. Click different values in the Variable Editor and change them.

To extract part of an array in the **Variable Editor**:

- Click and drag to select elements.
- Right-click and select **New Variable from Selection > New Numeric Array**.



The extracted array is given a default name. To change the name to something more meaningful, right-click the newly created variable in the **Workspace** and select **Rename**.

You can achieve many tasks using either interactive tools or MATLAB commands, as you choose.

You may wish to save the variables you have created so that you can load them directly in the future, without having to repeat the same importing and preprocessing steps.

You can use the `save` command to save variables to a MAT-file.

```matlab
>> save fileName
>> save fileName var1 var2
```


These commands both save variables in the workspace to a MAT-file named `*fileName*.mat`. The first command saves all variables currently in the workspace. The second saves only `*var1*` and `*var2*`.

Recall that a MAT-file is a file format specific to MATLAB. It saves variables but not the commands used to create them.