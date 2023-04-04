# batnpm
Run NPM and NPX commands inside a proxy without storing the password on windows.

Open the `batnpm.bat` or `batnpx.bat` file with a text editor, and change the `PROXY_URL` variable with the proxy url without http in front:
```
set PROXY_URL=
```

In your terminal run the command:
```
\.batnpm.bat <rest of the npm command>
```

A prompt with username and password will open.

To test if it is working correctly run:
```
\.batnpm.bat ping
```


If everything is correct the ping will work:

![image](https://user-images.githubusercontent.com/65685842/229909978-71781f1f-6a0c-41b8-8a62-e3108c307ba0.png)

Suggestion: add it to the environment variable so you can run the command directly.
