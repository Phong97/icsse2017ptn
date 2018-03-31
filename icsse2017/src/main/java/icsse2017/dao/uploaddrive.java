package icsse2017.dao;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

public class uploaddrive {
    public List<String> doUpload(HttpServletRequest request, //
                         MultipartFile[] files, int idnews) {


        // Thư mục gốc upload file.
        String uploadRootPath = request.getServletContext().getRealPath("upload");
        System.out.println("uploadRootPath=" + uploadRootPath);

        File uploadRootDir = new File(uploadRootPath);
        // Tạo thư mục gốc upload nếu nó không tồn tại.
        if (!uploadRootDir.exists()) {
            uploadRootDir.mkdirs();
        }
        List<String> linktep = new ArrayList<>();
        for (MultipartFile file : files) {
            String name = file.getOriginalFilename();
            System.out.println("Client File Name = " + name);
            if (name != null && name.length() > 0) {
                try {
                    // Tạo file tại Server.
                    File serverFile = new File(uploadRootDir.getAbsolutePath() + File.separator + name);
                    BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
                    stream.write(file.getBytes());
                    stream.close();
                    //
                    System.out.println("Write file: " + serverFile);
                    linktep.add(servicegoogle.uploaddrive(name, file.getContentType()));
                } catch (Exception e) {
                    System.out.println("Error Write file: " + e.toString());
                }
            }
        }
        return linktep;
    }
}
