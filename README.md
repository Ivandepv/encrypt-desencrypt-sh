## encrypt-desencrypt-sh

# Preparations
You will need a python venv, and install the requirements.txt.

You will need also use the a bash terminal to do this, because the archives are written in bash or .sh.

Check if your system use python or python3 because we use python command in bash to execute and show the ui.

For the moment, just UNIX systems can be able to use this program.

# Create files

This program imprimir.sh will create 10 files .txt to test the following programs in the folder sys_info
so, for test execute:

```
./imprimir.sh
```
and enter "enter" in the bash when requires the dir

# Encrypt

This program encrypt recursively the files into a zip file. To run this script, you will need to execute the next command in the terminal

```
./encrypt.sh $DIRECTORY_TO_ENCRYPT $PASSWORD
```


# Desencrypt

This program desencrypts the files .zip and shows a ui made in python telling you that the files are desencrypted.
To run this program you will need execute this command in the bash:

```
desencrypt.sh
```

Enter the password required and be care because if it's not the correct password it will delete the files.

