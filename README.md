# unikey-setup
Trình hỗ trợ cài đặt UniKey từ https://www.unikey.org

## Hướng dẫn sử dụng
Tải file cài đặt tài [trang Release](https://github.com/michioxd/unikey-setup/releases) hoặc tải trực tiếp [tại đây](https://github.com/michioxd/unikey-setup/releases/download/1.0/UniKeyNTSetup.exe)

Sau khi tải xong bạn chạy file `UniKeyNTSetup.exe` lên

![explorer_it21AKh0lp](https://user-images.githubusercontent.com/80969068/198886078-30aea382-3454-475f-9c76-b5b0530bbae4.png)'

và cài đặt như bình thường

## Hướng dẫn biên dịch trình cài đặt
### Chuẩn bị
- [Inno Setup 6](https://github.com/jrsoftware/issrc)
- [Git](https://github.com/git/git)
### Hướng dẫn
Clone dự án bằng git
```bash
git clone https://github.com/michioxd/unikey-setup
```

![powershell_Dtlk9oRVed](https://user-images.githubusercontent.com/80969068/198886646-f421c198-eecb-4e8a-be73-61739c790c4e.png)

Truy cập vào thư mục `unikey-setup`
```bash
cd unikey-setup
```

![powershell_2qu9z7wHCy](https://user-images.githubusercontent.com/80969068/198886675-f2ec5804-b3dc-47f4-93f4-77c9110524ea.png)

Mở thư mục
```bash
explorer.exe .
```

![powershell_Mma7iFHKPR](https://user-images.githubusercontent.com/80969068/198886700-996589d8-6474-4426-a426-412724ca072d.png)

Chuột phải vào file `UnikeyNTSetup.iss` sau đó chọn `Compile`

![8rWveZ5Cfo](https://user-images.githubusercontent.com/80969068/198886348-5e1352f4-10b2-453d-9b4c-da90835bc044.png)

Nếu bạn không thấy nút `Compile` ở context menu thì có thể mở nó bằng Inno Setup rồi compile nó (Ctrl+F9)

![Compil32_Bv6y2HwhEi](https://user-images.githubusercontent.com/80969068/198886446-be620e18-9b96-4575-87d9-8debfbd3dccb.png)

Sau khi compile xong, file cài đặt sẽ nằm ở thư mục output

![explorer_oZdxM9LvV4](https://user-images.githubusercontent.com/80969068/198886480-aa4bd17e-6595-48b1-97bf-003d6e933e07.png)
## Giấy phép

UniKey Setup: [MIT License](./LICENSE)

UniKey by Pham Kim Long: [GPL License](https://www.gnu.org/copyleft/gpl.html)
