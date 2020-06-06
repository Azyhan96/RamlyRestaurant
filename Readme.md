# Ramly Restaurant

Mini Project for Software Configuration Management.
**Preferred** operating system for this Project: **Windows**

## Screenshot of the project

coming soon guys. but do we ever need this on the github repo ?

## Kalau guna Command Line lagi senang nak guna Github

1. guna ```terminal``` . **Windows rasanya guna [git bash](https://git-scm.com/downloads) . *kena download***

2. lepas siap setup . buka **terminal yang dah download tadi** . ```cd``` ke mana-mana directory yang kau nak buat kerja ni . contoh kau buat folder dekat Desktop nama **SCM** . jadi kau 

    ```cd desktop/SCM``` 

3. then just run

    ```git clone https://github.com/Azyhan96/RamlyRestaurant```

4. next step , *edit apa yang patut di local folder tadi , yang dah di clone dari github . apa yang kita dah decide untuk change request .* . **tak perlu pun tutup *terminal* tu**

5. lepas dah siap dengan apa yang kau dah ubah sama ada penambahan atau pengurangan atau perubahan . kau just buka balik **terminal** tadi . dan run 

    ```git pull``` 

    untuk check kalau-kalau ada orang dah commit something

6. Buat branch untuk task yg perlu korang buat.

    ```git checkout -b NamaBranchYangSesuai```

7. Coding yang perlu

8. Add file berkaitan coding tadi, so better buat satu per satu. slow a bit
    ```git add -A```

    -A stands for all

9. Commit file with message. -m stands for message

    ```git commit -m "nota untuk commit tersebut berkaitan apa"```

10. Push the branch
    ```git push origin NamaBranchTadi```

11. Then buka github.com , submit pull request based on branch korang. Pastu merge and delete branch

## 12. Lepas dah settle step sampai 11. jangan lupa untuk run 

    git checkout master && git pull upstream master

13 . Bila dah return to Master dan branch pun sudah merged. buat lah ```Git Pull```