# FLUTTER PROFILE PICTURE

 Automatically generate profile picture with random first name and background color. But you can still provide pictures if you have them.

 ![image](https://user-images.githubusercontent.com/37553901/134119907-c16c5481-2a1c-43b6-961a-986528e83f15.png)

## Style

### Default Style

![image](https://user-images.githubusercontent.com/37553901/134119014-3b51bea5-e0bf-49b1-aa3e-8d5f91c6e92d.png)

``` dart
ProfilePicture(
    name: 'Dees',
    radius: 31,
    fontsize: 21,
);

ProfilePicture(
    name: 'Aditya Dharmawan Saputra',
    radius: 31,
    fontsize: 21,
);
```

### Random Color

![image](https://user-images.githubusercontent.com/37553901/134119324-8271b270-c695-4141-b079-bdc1c09ec0b0.png)

``` dart
ProfilePicture(
    name: 'Dees',
    radius: 31,
    fontsize: 21,
);

ProfilePicture(
    name: 'Aditya Dharmawan Saputra',
    radius: 31,
    fontsize: 21,
    random: true,
);
```

### Max letter

![image](https://user-images.githubusercontent.com/37553901/134119854-72deba5c-67e5-42cd-b227-8dcf2b5beb9f.png)

``` dart

ProfilePicture(
    name: 'Aditya Dharmawan Saputra',
    radius: 31,
    fontsize: 21,
    count: 3,
);
```

### Empty Name / Blank

![image](https://user-images.githubusercontent.com/37553901/134119842-3a56f038-516e-4e08-a884-27eac8db73eb.png)

``` dart
ProfilePicture(
    name: '',
    radius: 31,
    fontsize: 21,
);
```

### With Images

![image](https://user-images.githubusercontent.com/37553901/134119814-8199fe68-cbc7-4a8d-8d4f-4abb16343a80.png)

``` dart
ProfilePicture(
    name: 'Aditya Dharmawan Saputra',
    radius: 31,
    fontsize: 21,
    img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
);
```

### Tooltips without role

![image](https://user-images.githubusercontent.com/37553901/134119791-21eba1c7-e50f-44aa-b66d-30c41de98a87.png)

``` dart
ProfilePicture(
    name: 'Aditya Dharmawan Saputra',
    role: '',
    radius: 31,
    fontsize: 21,
    tooltip: true,
);
```

### Tooltips with role

![image](https://user-images.githubusercontent.com/37553901/134119720-ec140db1-b3ab-4422-90af-323b02d5060d.png)

``` dart
ProfilePicture(
    name: 'Aditya Dharmawan Saputra',
    role: 'ADMINISTRATOR',
    radius: 31,
    fontsize: 21,
    tooltip: true,
);
```

### Tooltips with role and images

![image](https://user-images.githubusercontent.com/37553901/134119679-44c74bcb-b51b-463f-ade1-42697d68eac5.png)

``` dart
ProfilePicture(
    name: 'Aditya Dharmawan Saputra',
    role: 'ADMINISTRATOR',
    radius: 31,
    fontsize: 21,
    tooltip: true,
    img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
);
```
