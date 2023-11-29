#!/bin/bash

# إنشاء المجلد إذا كان غير موجود
mkdir -p "$HOME/.bitping/"

# تشغيل الحاوية وإجراء الإعدادات اللازمة
docker run -it --mount type=bind,source="$HOME/.bitping/",target=/root/.bitping bitping/bitping-node:latest

# بعد تشغيل الحاوية وعند المطالبة بالإيميل وكلمة المرور
echo "Email: beformine@gmail.com"
read -s -p "Password: " password

# إدخال الإيميل وكلمة المرور داخل الحاوية
docker exec -it <container_id> sh -c "echo $password > /root/.bitping/password.txt"

# استخدام المتغير $password لإدخال كلمة المرور عند المطلوب
